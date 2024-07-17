<div align='left'>
<a href="https://fund.ar">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://github.com/user-attachments/assets/a3add638-f86c-452f-bb1d-5dbcc20893a2">
    <source media="(prefers-color-scheme: light)" srcset="https://github.com/user-attachments/assets/90703034-ef7f-4290-8a5d-2d27c6835fc7">
    <img src="fund.ar" width="400"></img>
  </picture>
</a>
</div>

El [geonomenclador](https://docs.google.com/spreadsheets/d/1744VS5xENUg1JRCaKr1dGUr73jgP-wz27guIhHvYGbQ) es esencialmente un diccionario que asigna códigos "estandar" a paises y regiones geográficas. Es una parte vital de ArgenData, pues es necesario para armonizar los datos provenientes de distintas bases.

![geo_interseccion](./assets/supervenn.png)

Para poder normalizar la nomenclatura de países, se compararon los códigos normalizados de distintas bases (Imágen de arriba) y se priorizaron los códigos según
la proporción de uso de la base sobre los datasets que tiene el proyecto. Luego, usando técnicas de fuzzy matching se unificaron los nombres de distintos países
y regiones (Imágen de abajo, muestra un grafo donde cada flecha muestra la similitud entre dos regiones según su nombre).

![image](https://github.com/user-attachments/assets/138357db-8276-4191-a292-99eb22ea68f4)


## Tabla interactiva

Acceso a explorador del geonomenclador <https://argendatafundar.github.io/geonomencladores/geonomenclador_argendata.html>

[![](https://github.com/user-attachments/assets/efb26c9f-05b2-484b-8264-24b5dd2a0fd5)](https://argendatafundar.github.io/geonomencladores/geonomenclador_argendata.html)


<div>
<a href="https://fund.ar">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://github.com/datos-Fundar/fundartools/assets/86327859/6ef27bf9-141f-4537-9d78-e16b80196959">
    <source media="(prefers-color-scheme: light)" srcset="https://github.com/datos-Fundar/fundartools/assets/86327859/aa8e7c72-4fad-403a-a8b9-739724b4c533">
    <img src="fund.ar"></img>
  </picture>
</a>
</div>
