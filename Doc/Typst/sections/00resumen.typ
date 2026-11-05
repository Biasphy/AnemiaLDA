#import "@preview/versatile-apa-caratula-moded:7.1.5": *
#import "../bib_state.typ": bib_state
#context bib_state.get()

= RESUMEN

La anemia es un problema que reduce la capacidad de la sangre para transportar oxígeno y afecta el desarrollo físico y lo cognitivo, en 2023 afectaba al 30,7 % de las mujeres de 15 a 49 años en el mundo @oms_estimates_2025. En el Perú, la ENDES 2025 estimó que el 34,9 % de las niñas y niños de 6 a 35 meses la padecían @inei_anemia_2026, mientras que en Ayacucho la prevalencia de 2024 llegó al 45,7 %, muy por encima del promedio nacional @inei_ayacucho_2025. Su diagnóstico se apoya en la biometría hemática, cuyos parámetros, como la hemoglobina, el hematocrito, el volumen corpuscular medio y los demás índices eritrocitarios, deben interpretarse según la edad, el sexo y la altitud de residencia, de acuerdo con los puntos de corte actualizados por la Organización Mundial de la Salud @who_hb_2024 y las disposiciones del Ministerio de Salud @minsa_rm251_2024 @minsa_rm429_2024. Esto vuelve conveniente disponer de herramientas que apoyen una clasificación consistente. Por ello, el presente proyecto propone desarrollar y evaluar un sistema de apoyo a la clasificación de estados anémicos basado en el Análisis Discriminante Lineal (LDA), técnica de aprendizaje supervisado que construye combinaciones lineales de las variables capaces de maximizar la separación entre clases @zhao_lda_2024. El sistema empleará registros hematológicos reales de pacientes del Hospital Regional de Ayacucho, previa autorización institucional, y abordará tres niveles de clasificación: dicotómico (presencia o ausencia de anemia), morfológico (microcítica, normocítica o macrocítica) y por severidad (leve, moderada o severa). Su desempeño se valorará mediante exactitud, sensibilidad, especificidad y matriz de confusión, contrastando sus resultados con los criterios clínicos de referencia de la OMS y del MINSA. El sistema se concibe como un complemento a la evaluación hematológica y no como un sustituto del juicio del profesional de la salud.

#v(1em)
#par(first-line-indent: 0em)[
  *Palabras clave:* anemia, análisis discriminante lineal, aprendizaje automático supervisado, biometría hemática, clasificación hematológica, Ayacucho.
]

#pagebreak()

= ABSTRACT

Anemia is a global public health problem that reduces the blood's capacity to carry oxygen and affects physical development and cognitive performance. In 2023 it affected 30.7% of women aged 15 to 49 worldwide. In Peru, the 2025 Demographic and Family Health Survey (ENDES) estimated that 34.9% of children aged 6 to 35 months had anemia, while in Ayacucho the 2024 prevalence reached 45.7%, well above the national average. Diagnosis relies on the complete blood count, whose parameters, such as hemoglobin, hematocrit, mean corpuscular volume and other red cell indices, must be interpreted according to age, sex and altitude of residence, following the cutoffs updated by the World Health Organization and the regulations of the Peruvian Ministry of Health. The adoption of these new thresholds in the country noticeably changes both the estimated prevalence and the category assigned to each child, which makes tools that support consistent classification desirable. This project therefore proposes to develop and evaluate a decision-support system for classifying anemic states based on Linear Discriminant Analysis (LDA), a supervised learning technique that builds linear combinations of variables that maximize separation between classes. The system will use real hematological records from patients of the Hospital Regional de Ayacucho, subject to institutional authorization, and will address three classification levels: dichotomous (presence or absence of anemia), morphological (microcytic, normocytic or macrocytic) and by severity (mild, moderate or severe). Its performance will be assessed through accuracy, sensitivity, specificity and the confusion matrix, comparing its outputs with the clinical reference criteria of the WHO and MINSA. The system is conceived as a complement to hematological assessment, not as a substitute for the clinical judgment of health professionals.

#v(1em)
#par(first-line-indent: 0em)[
  *Keywords:* anemia, linear discriminant analysis, supervised machine learning, complete blood count, hematological classification, Ayacucho.
]