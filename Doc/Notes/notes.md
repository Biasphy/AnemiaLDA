# Diccionario

- RECH5_2025.csv `(y su Diccionario - RECH5.pdf)`

  - **Qué contiene:** Datos de **Antropometría y Anemia en Mujeres** en edad fértil (de 12 a 49 años). Incluye mediciones de peso, talla y los niveles de hemoglobina ajustados para determinar si la mujer presenta cuadros de anemia (leve, moderada, severa o sin anemia).
- `RECH6_2025.csv` (y su `Diccionario - RECH6.pdf`)

  - **Qué contiene:** Datos de **Antropometría y Anemia en Niños** menores de 5 años (principalmente de 6 a 35 meses, que es la población más vulnerable y estudiada en el Perú). Contiene el registro de hemoglobina del niño, factores de corrección por altitud, peso, talla, edad, y la variable diagnóstica de anemia.
- `REC44_2025.csv` (y su `Diccionario - REC44.pdf`)

  - **Qué contiene:** El módulo individual de  **Peso, Talla y Anemia (asociado al Cuestionario Individual)** . A diferencia de RECH6 (que viene del cuestionario del hogar), este archivo recopila la información antropométrica y de hemoglobina vinculada estrechamente al **cuestionario individual de la madre/mujer** (`CASEID`), conteniendo a menudo variables adicionales sobre antecedentes reproductivos, controles prenatales o lactancia.

  # Definición de Variables

* Variable Objetivo (**$Y$**) La variable dependiente o clase que el modelo LDA intentará predecir y separar es: **`HC57`** : Nivel de anemia (según la RM 363-2022-MINSA).

  * **Categorías:** `1` (Grave), `2` (Moderada), `3` (Leve) y `4` (Sin anemia).
  * *Nota de diseño:* Para fines prácticos de rendimiento del modelo o simplificación analítica, esta variable puede transformarse en un enfoque binario (`0` = Sin anemia, `1` = Con anemia agrupando las categorías 1, 2 y 3).
  * *Restricción teórica:* Las variables directas de hemoglobina (`HC53`, `HC56`, `HC56A`) **se excluyen por completo** de las variables predictoras para evitar el fenómeno de *data leakage* (fuga de datos), ya que el nivel de anemia se calcula matemáticamente a partir de ellas.
* Variables Predictoras (**$X$**) Seleccionadas, se han seleccionado un total de 11 variables predictoras agrupadas en tres dimensiones (antropométrica, biológica y socioeducativa):

  * ## Variables Antropométricas Básicas y Biológicas (Continuas)

    * **`HC1` (Edad en meses):** Factor biológico crítico. Los niños de 6 a 35 meses presentan la mayor tasa de vulnerabilidad por la transición alimentaria.
    * **`HC2` (Peso en kilogramos):** Masa corporal general del infante.
    * **`HC3` (Altura o talla en centímetros):** Indicador lineal de crecimiento físico.
  * ## Puntajes Z / Desviaciones Estándar de la OMS (Altamente recomendados para LDA)

    *Nota: Se priorizan las desviaciones estándar frente a los percentiles debido a su mejor comportamiento estadístico y continuidad en distribuciones paramétricas.*
  * * 
    * **`HC70` (Talla/Edad - Desviación Estándar):** Mide el retraso en el crecimiento lineal (desnutrición crónica).
    * **`HC71` (Peso/Edad - Desviación Estándar):** Mide la desnutrición global del infante.
    * **`HC72` (Peso/Talla - Desviación Estándar):** Mide la emaciación o desnutrición aguda.
    * **`HC73` (Desviación Estándar del IMC):** Evalúa la composición corporal ajustada por edad y sexo.
    * ## C. Variables Demográficas y del Entorno Familiar


      * **`HC27` (Sexo del niño):** Variable de control demográfica (`1` = Hombre, `2` = Mujer).
      * **`HC61` (Nivel educativo más alto de la madre):** Escala ordinal desde `0` (Sin educación) hasta `3` (Superior). Refleja las prácticas de prevención y cuidado en el hogar.
      * **`HC62` (Años de educación de la madre):** Cantidad exacta de años de estudio cursados, complementando el nivel educativo con mayor precisión numérica.
      * **`HC64` (Número de orden de nacimiento):** Permite evaluar si los hijos de mayor orden de nacimiento (familias extensas o con más hermanos) sufren mayor propensión debido a la distribución de recursos del hogar.

      ñ

> Si incluyéramos la hemoglobina (`HC56` o `HC56A`) como variable predictora (**$X$**), el modelo tendría información directa del resultado analítico, lo que anularía el propósito de *predecir* o *clasificar* basándonos en condiciones de vulnerabilidad física y social. Lo valioso del **LDA** aquí es descubrir cómo los patrones de crecimiento (`HC70`-`HC73`), la edad (`HC1`) y el entorno familiar (`HC61`, `HC64`) se alinean linealmente para separar y predecir los grupos de anemia sin necesidad de pinchar al niño para sacarle sangre.

---
