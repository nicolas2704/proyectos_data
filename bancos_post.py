import pandas as pd
import numpy as np
import requests
from bs4 import BeautifulSoup
from datetime import datetime
import psycopg2
from sqlalchemy import create_engine
import os
from dotenv import load_dotenv
load_dotenv()

# variables
url = os.getenv("URL_bancos") # para poder ejecutar el codigo es necesaria la url
banco_csv="/home/nicolas27/data/python_data_enginering/Python/entorno_virtual/proyeto_virtual/web_scraping/proyecto_final/Bancos_mas_Grandes.xlsx"
nombre_db="proyecto"
nombre_tabla="bancos_mas_grandes"
archivo_registro="/home/nicolas27/data/python_data_enginering/Python/entorno_virtual/proyeto_virtual/web_scraping/proyecto_final/codigo_de_registro.txt"
csv_ruta="/home/nicolas27/data/python_data_enginering/Python/entorno_virtual/proyeto_virtual/web_scraping/proyecto_final/exchange_rate.csv"

dataframe_vacio=pd.DataFrame(columns=["Name", "MC_USD_Billion"])

#REGISTRO
def proceso_log(mensaje):
    formato_tiempo="%Y-%h-%d-%H:%M:%S"
    fecha_actual=datetime.now()
    marca_de_tiempo=fecha_actual.strftime(formato_tiempo)

    with open(archivo_registro, "a") as registro:
        registro.write(marca_de_tiempo + " : "+mensaje+"\n")

#EXTRAER
def extraer(url, dataframe):
    pagina_html=requests.get(url).text
    datos=BeautifulSoup(pagina_html, "html.parser")
    tabla=datos.find_all("tbody")
    filas=tabla[0].find_all("tr")

    for fila in filas:
        celda=fila.find_all("td")
        if len(celda)!=0:
            bancos=celda[1].text.strip()
            market_cp=celda[2].contents[0].text.strip()

            data_dict={"Name":bancos,
                       "MC_USD_Billion":market_cp}
            
            dataframe1=pd.DataFrame(data_dict, index=[0])
            dataframe=pd.concat([dataframe, dataframe1], ignore_index=True)
        else:
            continue
    return dataframe

# TRANSFORMAR
def transformar(dataframe, csv_ruta):
    #ratio de cambio csv
    ratio_de_intercambio=pd.read_csv(csv_ruta)
    print(ratio_de_intercambio)

    #transformando dataframe
    dataframe["Name"]=dataframe["Name"].astype(str)
    dataframe["MC_USD_Billion"]=dataframe["MC_USD_Billion"].astype(float)

    #agregar columnas
    dataframe["MC_EUR_Billion"]=np.round(dataframe["MC_USD_Billion"] * ratio_de_intercambio.loc[0, "Rate"], 2)
    dataframe["MC_GBP_Billion"]=np.round(dataframe["MC_USD_Billion"] * ratio_de_intercambio.loc[1, "Rate"], 2)
    dataframe["MC_INR_Billion"]=np.round(dataframe["MC_USD_Billion"] * ratio_de_intercambio.loc[2, "Rate"], 2)
    dataframe["MC_CHF_Billion"]=np.round(dataframe["MC_USD_Billion"] * ratio_de_intercambio.loc[3, "Rate"], 2)
    dataframe["MC_JPY_Billion"]=np.round(dataframe["MC_USD_Billion"] * ratio_de_intercambio.loc[4, "Rate"], 2)
    dataframe["MC_ARG_Billion"]=np.round(dataframe["MC_USD_Billion"] * ratio_de_intercambio.loc[5, "Rate"], 2)

    return dataframe

# CARGAR
def cargar_a_csv(dataframe, banco_csv):
    dataframe.to_excel(banco_csv)

# carga a base de datos
def cargar_a_base_datos(dataframe,nombre_db, nombre_tabla):
    try:
        cadena_conexion=f"postgresql://{os.getenv("usuario_post")}:{os.getenv("pass_postgres")}@{os.getenv("host_post")}:5432/{nombre_db}"
        engine=create_engine(cadena_conexion)
        print("conexion exitosa")
        dataframe.to_sql(nombre_tabla, engine, if_exists='append', index=False)# crea la tabla, si existe la reemplaza y carga los datos

    except Exception as ex:
        print(ex)

#extraccion
proceso_log("Proceso de Extraccion Inicializado")
datos_extraidos = extraer(url, dataframe_vacio)
print("datos extraidos")
print(datos_extraidos)
proceso_log("Proceso de Extraccion Finalizado\n")

#transformacion
proceso_log("Proceso de Transformacion Inicializado")
print("Datos Transformados:")
datos_transformados=transformar(datos_extraidos, csv_ruta)
print(datos_transformados)
proceso_log("Proceso de Transformacion Finalizado\n")

#carga
proceso_log("Procesos de Cargas Inicializados")
proceso_log("Carga de Bancos.csv")
cargar_a_csv(datos_transformados, banco_csv)
proceso_log("Archivo exportado")
# carga a base de datos
proceso_log("Proceso de carga en Base de Datos PostgreSQL Inicializado")
cargar_a_base_datos(datos_transformados,nombre_db, nombre_tabla)
proceso_log("Proceso de carga en Base de Datos PostgreSQL Finalizado")
proceso_log("Procesos de Cargas Finalizados")
proceso_log("Proceso ETL Finalizado\n")