#import "@preview/versatile-apa-caratula-moded:7.1.5": *
#import "../bib_state.typ": bib_state
#context bib_state.get()

= RESUMEN

La anemia en la primera infancia continúa siendo uno de los problemas de salud pública más persistentes del Perú: en 2024 afectó a más de un tercio de las niñas y niños de 6 a 35 meses, con mayor incidencia en el área rural. Su diagnóstico habitual depende de la medición de hemoglobina, lo que exige una punción capilar y equipamiento que no siempre está disponible en los establecimientos de primer nivel. Ante ello, la presente investigación tuvo como objetivo construir un modelo de discriminación y clasificación de los estados anémicos en menores de cinco años mediante el Análisis Discriminante Lineal (LDA), empleando únicamente variables antropométricas, biológicas y socioeducativas, sin recurrir a la hemoglobina como predictor. El estudio, de enfoque cuantitativo y alcance predictivo, se desarrolló en Ayacucho a partir de los microdatos del módulo RECH6 de la Encuesta Demográfica y de Salud Familiar (ENDES) 2025, que reúne 19 298 registros. Como variable objetivo se utilizó el nivel de anemia (grave, moderada, leve y sin anemia) y como predictores se seleccionaron once variables: edad, peso, talla, cuatro puntajes Z de la OMS (talla/edad, peso/edad, peso/talla e IMC/edad), sexo, nivel y años de educación de la madre, y orden de nacimiento. Las variables directas de hemoglobina se excluyeron para evitar la fuga de información (_data leakage_). Tras depurar códigos de excepción y valores fuera de los rangos oficiales del INEI, se obtuvo un conjunto final de 16 476 registros, de los cuales el 34,5 % presentó algún grado de anemia (24,5 % leve, 9,9 % moderada y 0,1 % grave). Sobre esta base se estiman las funciones discriminantes y se evalúa su capacidad de clasificación mediante métricas de exactitud, sensibilidad y especificidad, cuyos resultados se detallan en el Capítulo II. Se espera que el modelo constituya una herramienta de tamizaje de bajo costo que contribuya a priorizar a la población infantil con mayor riesgo de anemia.

// TODO: cuando el modelo LDA esté entrenado, reemplazar la penúltima oración
// por los valores obtenidos (p. ej., exactitud global, sensibilidad por clase).

#v(1em)
#par(first-line-indent: 0em)[
  *Palabras clave:* anemia infantil, análisis discriminante lineal, aprendizaje automático, ENDES, antropometría, clasificación.
]

#pagebreak()

= ABSTRACT

Early-childhood anemia remains one of Peru's most persistent public health problems: in 2024 it affected more than one third of children aged 6 to 35 months, with a higher burden in rural areas. Its diagnosis usually relies on hemoglobin testing, which requires a capillary blood sample and equipment that is not always available in primary care facilities. This study therefore aimed to build a model to discriminate and classify anemia levels in children under five using Linear Discriminant Analysis (LDA), relying solely on anthropometric, biological and socio-educational variables and deliberately excluding hemoglobin as a predictor. The research, quantitative in approach and predictive in scope, was carried out in Ayacucho using microdata from the RECH6 module of the 2025 Demographic and Family Health Survey (ENDES), comprising 19,298 records. Anemia level (severe, moderate, mild and no anemia) was used as the target variable, and eleven predictors were selected: age, weight, height, four WHO Z-scores (height-for-age, weight-for-age, weight-for-height and BMI-for-age), sex, mother's educational level and years of schooling, and birth order. Hemoglobin variables were excluded to prevent data leakage. After removing exception codes and values outside the official INEI ranges, the final dataset contained 16,476 records, 34.5% of which showed some degree of anemia (24.5% mild, 9.9% moderate and 0.1% severe). On this basis, discriminant functions are estimated and their classification performance is assessed through accuracy, sensitivity and specificity, as reported in Chapter II. The model is expected to serve as a low-cost screening tool that helps prioritize the children at greatest risk of anemia.

#v(1em)
#par(first-line-indent: 0em)[
  *Keywords:* childhood anemia, linear discriminant analysis, machine learning, ENDES, anthropometry, classification.
]
