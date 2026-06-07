# Análisis del Burnout en Desarrolladores: Modelado y Predicción

## 📝 Descripción del Proyecto

Este repositorio documenta el desarrollo y análisis realizado para la **Actividad Grupal 2**, enfocado en entender cómo los factores de experiencia y entorno laboral influyen en los niveles de estrés (burnout) de los desarrolladores. El objetivo central fue demostrar la asociación estadística entre variables y construir un modelo predictivo robusto.

### 🎯 Objetivo de Negocio

Identificar mediante regresión lineal múltiple si los años de experiencia y otras variables clave son predictores significativos del estrés percibido, permitiendo así generar estrategias de bienestar laboral basadas en datos.

## 🚀 Algoritmo de Alto Nivel (Workflow)

Este es el *pipeline* técnico que implementamos para garantizar la validez científica de los resultados:

1. **Ingesta de Datos**: Conexión a fuentes externas (MongoDB) y carga de dataframes.
2. **Análisis Exploratorio (EDA)**: Análisis de distribuciones, identificación de sesgos y tratamiento de valores perdidos.
3. **Preparación y División**: Aplicación de `train_test_split` (80% entrenamiento, 20% prueba) para asegurar la generalización del modelo.
4. **Ingeniería de Características**: En este caso no se aplicaron transformaciones (ej. logarítmica) para corregir sesgos y normalizar residuos.
5. **Modelado**: Entrenamiento de modelos comparativos (baseline vs. modelo transformado).
6. **Validación**: Cálculo de métricas de error (MAE, MSE, RMSE) y diagnóstico de residuos (Gráficos Q-Q).
7. **Conclusiones**: Interpretación estadística de los coeficientes y su impacto real en la psicología del desarrollador.

## 📊 Principales Hallazgos

* El análisis comparativo confirmó que la reducción del estrés por experiencia no es constante, sino porcentual, lo cual aporta un *insight* valioso para la gestión de equipos, es decir, no necesariamente entre más experiencia se tenga, menor estrés se percibe ya que esto depende de otras variables.

* La variable que más genera más nivel de estrés son las horas diarias laboradas y en menor medida sin dejar de ser representativas, la cantidad de horas diarias en reuniones.

## 🛠 Tecnologías Utilizadas

* **Reproducibilidad**: Docker (contenedor: MongoDB, imagen: Python)
* **Lenguaje**: Python
* **Librerías**: `Pandas`, `NumPy`, `Seaborn`, `Matplotlib`, `Statsmodels`, `Scikit-Learn`, `PyMongo`.
* **Entorno**: Jupyter Notebooks.

## 👥 Colaboradores

* José Noguez
* Luis Ceballos
* César Gómez
* **Afiliación**: UNIR (Maestría en Análisis y Visualización de Datos Masivos)

## Mejoras aplicables y últimos comentarios generales
Nuestro modelo de regresión lineal presenta un coeficiente de determinación de 0.89, lo que valida su alta capacidad explicativa. Se ha garantizado la fiabilidad del modelo mediante el control riguroso de la multicolinealidad (evaluación VIF) previa a la partición de datos (Train/Test) y la optimización de métricas de error.

Como parte de nuestra estrategia de mejora continua y refinamiento técnico, los próximos pasos se orientan a la optimización de la homocedasticidad:

1. Transformación Logarítmica/Raíz Cuadrada: Aplicación sistemática en variables con sesgo significativo para estabilizar la varianza.

2. Validación de Residuos: Inspección visual post-transformación para asegurar la aleatoriedad.

3. Control de Multicolinealidad: Re-validación del VIF para asegurar la estabilidad estructural tras los ajustes.

## 💡 Lecciones Aprendidas y Gestión Grupal
Este proyecto fue más que un desafío de modelado estadístico; fue un ejercicio de colaboración técnica efectiva. Al sincronizar el trabajo de tres integrantes, identificamos y resolvimos los siguientes puntos críticos:

Sincronización de Entornos: El mayor reto inicial fue la disparidad en las configuraciones locales. Aprendimos que la estandarización mediante requirements.txt y Docker no es opcional, sino una necesidad operativa para evitar que el código falle al pasar de una máquina a otra.

Integración de Modelos: Enfrentamos discrepancias entre los modelos individuales al tratar de unificar los hallazgos en un solo reporte técnico. La lección clave fue establecer un protocolo de limpieza de datos común desde el inicio, evitando que cada integrante aplicara preprocesamientos distintos que invalidaran la comparación.

Control de Versiones y Comunicación: Comprendimos la importancia de trabajar sobre ramas (branches) en Git y mantener una comunicación constante sobre los cambios en la estructura de los dataframes. Esto nos permitió iterar sobre el modelo de regresión de manera paralela sin sobrescribir el trabajo ajeno.

Conclusión del equipo: La Ciencia de Datos no es un deporte individual. La capacidad de armonizar modelos y resultados heterogéneos es tan valiosa como la precisión del modelo mismo.