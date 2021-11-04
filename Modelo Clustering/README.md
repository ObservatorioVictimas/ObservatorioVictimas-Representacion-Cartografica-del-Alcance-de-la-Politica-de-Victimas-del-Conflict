

# Modelo Clustering 

Se crea un Archivo de las personas que han sido desplazadas ha Bogota y se identifica de esa población cual esta residiendo a corte de 1 de septiembre

![image](https://user-images.githubusercontent.com/93198276/139264347-9fdd4829-da0f-4356-bc62-3900f0ab243f.png)

# K-Means

K-Means es un algoritmo no supervisado de Clustering. El algoritmo trabaja iterativamente para asignar a cada “punto” (las filas de nuestro conjunto de entrada forman una coordenada) uno de los “K” grupos basado en sus características. Son agrupados en base a la similitud de sus features (las columnas). Como resultado de ejecutar el algoritmo tendremos:

Los “centroids” de cada grupo que serán unas “coordenadas” de cada uno de los K conjuntos que se utilizarán para poder etiquetar nuevas muestras.
Etiquetas para el conjunto de datos de entrenamiento. Cada etiqueta perteneciente a uno de los K grupos formados.
Los grupos se van definiendo de manera “orgánica”, es decir que se va ajustando su posición en cada iteración del proceso, hasta que converge el algoritmo. Una vez hallados los centroids deberemos analizarlos para ver cuales son sus características únicas, frente a la de los otros grupos. Estos grupos son las etiquetas que genera el algoritmo.

# Fuente de datos

Este archivo contiene la información de la población que se identifico desplazada a la ciudad de Bogota y se realizan unas marcas para realizar el modelo de Clustering.

[Fuente de Datos.csv](https://github.com/ObservatorioVictimas/ObservatorioVictimas-Representacion-Cartografica-del-Alcance-de-la-Politica-de-Victimas-del-Conflict/files/7469118/Desplazamiento.csv)

# Diccionario de datos

| Campo | Descripción  |
| :----- | :--- | 
| PertenenciaEtnica | Pertenencia Étnica de la persona que sufrió el hecho de desplazamiento  | 
|MunicipioOcurrencia  |  Municipio donde se genero el hecho de desplazamiento, es de recordar que solo analizamos los desplazamientos ocurridos hacia la ciudad de Bogota | 
| Discapacidad |  Este campo nos indica si la persona sufre de algún tipo de discapacidad, 0 si no sufre ninguna discapacidad y 1 si sufre de alguna discapacidad | 
| EdadHecho | Edad al la persona sufrió el hecho de desplazamiento | 
| MunicipioActual | 1 si la persona actualmente vive en Bogota o 0 si la persona vive en un municipio diferente a Bogota | 
| Edad | Edaad actual de la persona que sufrió el hecho de desplazamiento | 
| TipoDesplazamiento | Si en el municipio que se genero el desplazamiento, se desplazaron mas de 50 personas en el rango de un mes tiene una marca de 1 o por lo contrario tiene una marca de cero | 
| Genero | EL genero al que pertenece la persona 1 masculino, 2 femenino y 3 transgénero | 
| MesAñoOcurrencia | Este campo identifica la unión de mes y año ocurrencia en formato numero |

# [Resultados](https://github.com/ObservatorioVictimas/ObservatorioVictimas-Representacion-Cartografica-del-Alcance-de-la-Politica-de-Victimas-del-Conflict/tree/main/Modelo%20Clustering/Resultados)







