#import "@preview/versatile-apa-caratula-moded:7.1.5": *
#import "../../bib_state.typ": bib_state
#context bib_state.get()

== Antecedentes de la Investigación

La revisión de la literatura permitió identificar estudios que abordan la anemia desde dos perspectivas complementarias: por un lado, investigaciones epidemiológicas que describen sus factores asociados a partir de encuestas poblacionales y, por otro, trabajos que aplican técnicas de aprendizaje automático —entre ellas el análisis discriminante— para predecir o clasificar esta condición. A continuación se presentan los antecedentes internacionales y nacionales más pertinentes, ordenados cronológicamente, y en la @fig-linea-antecedentes se resume su evolución.

#figure(
  image("../../assets/img/stella/linea_tiempo_antecedentes.svg", width: 100%),
  caption: [Línea de tiempo de los antecedentes revisados según técnica y fuente de datos],
) <fig-linea-antecedentes>

#par(first-line-indent: 0em)[
  _Nota._ Elaboración propia a partir de los estudios citados en esta sección. AD = análisis discriminante; LDA = análisis discriminante lineal; RF = bosque aleatorio; DT = árbol de decisión.
]

=== Antecedentes internacionales

#cite(<urrechaga_mda_2013>, form: "prose") evaluaron la utilidad del análisis discriminante multivariable para el diagnóstico diferencial de la anemia microcítica, con el propósito de distinguir la anemia ferropénica de los portadores de talasemia. Para ello entrenaron funciones discriminantes con un grupo de 480 pacientes, empleando como predictores parámetros del hemograma (recuento de eritrocitos, hemoglobina, volumen corpuscular medio, hemoglobina corpuscular media y amplitud de distribución eritrocitaria), y las validaron posteriormente en 628 casos consecutivos. Al separar las anemias de origen genético de las adquiridas bastó una sola función discriminante, la cual clasificó correctamente al 87,9 % de los portadores de β-talasemia y al 83,3 % de los portadores de α-talasemia. Los autores concluyeron que las funciones discriminantes lineales construidas con datos rutinarios del hemograma constituyen un apoyo eficaz para orientar qué muestras requieren pruebas confirmatorias. Este trabajo respalda la pertinencia del LDA como técnica de clasificación en el ámbito hematológico.

Posteriormente, #cite(<khan_anemia_2019>, form: "prose") compararon el desempeño de diversos algoritmos de aprendizaje automático para predecir la anemia infantil en Bangladés, utilizando información de 2013 niños menores de cinco años procedente de la Encuesta Demográfica y de Salud de 2011. Entre los clasificadores evaluados se incluyeron el análisis discriminante lineal, los árboles de clasificación y regresión (CART), los _k_ vecinos más cercanos, las máquinas de vectores de soporte, el bosque aleatorio y la regresión logística. El bosque aleatorio obtuvo el mejor rendimiento, con una exactitud de 68,53 %, una sensibilidad de 70,73 % y un área bajo la curva (AUC) de 0,686, superando a la regresión logística, que alcanzó 62,75 % de exactitud. Los autores sostienen que los métodos de aprendizaje automático pueden complementar a la regresión clásica cuando el objetivo principal es la predicción. Este antecedente resulta especialmente cercano a la presente investigación, pues emplea una encuesta de diseño equivalente a la ENDES e incorpora el LDA como uno de los modelos de referencia.

En una línea similar, #cite(<kassaw_anemia_2023>, form: "prose") aplicaron un enfoque de aprendizaje automático para identificar los predictores de la anemia en menores de cinco años en Etiopía, a partir de un estudio transversal con 9501 niños de la Encuesta Demográfica y de Salud de 2016. Mediante el algoritmo Boruta, basado en bosques aleatorios, seleccionaron las variables más relevantes y hallaron que el número de hijos, la distancia al establecimiento de salud, la cobertura de seguro, la eliminación de heces del menor, el área de residencia, el índice de riqueza, el tipo de combustible para cocinar, el tamaño del hogar, la educación de la madre y la vacunación contra rotavirus figuraban entre los diez predictores más importantes. El estudio evidencia que los determinantes sociodemográficos y del entorno familiar —como la educación materna, considerada también en esta investigación— aportan información valiosa para anticipar la anemia sin recurrir a pruebas de laboratorio.

=== Antecedentes nacionales

En el contexto peruano, #cite(<velasquez_anemia_2016>, form: "prose") analizaron los factores asociados con la anemia en niños de 6 a 35 meses a partir de la ENDES 2007-2013. Mediante regresión logística multivariada, y considerando como anémicos a los menores con hemoglobina ajustada por altitud inferior a 11 g/dL, estimaron una prevalencia del 47,9 % e identificaron doce factores asociados. Entre los de carácter sociodemográfico destacaron residir fuera de Lima y Callao, pertenecer a un hogar de bajo nivel socioeconómico, tener una madre adolescente o con escasa educación y ser varón menor de 24 meses; entre los vinculados al cuidado materno-infantil, la ausencia de control prenatal en el primer trimestre, la falta de suplementación con hierro durante la gestación, el parto domiciliario, la anemia materna y la ausencia de tratamiento antiparasitario. Los autores concluyeron que la ENDES es una fuente idónea para caracterizar la anemia infantil. Este estudio sustenta la selección de variables como la edad, el sexo y la educación de la madre en el presente trabajo.

Más adelante, #cite(<marcos_anemia_2023>, form: "prose") desarrollaron un modelo de aprendizaje automático para predecir la anemia en menores de cinco años a partir de su estado nutricional, aplicando un proceso de minería de datos sobre 138 369 registros provenientes de la Plataforma Nacional de Datos Abiertos, correspondientes a distritos de Lima. Tras las etapas de limpieza, reducción y transformación, aplicaron las pruebas F de ANOVA y chi-cuadrado para seleccionar diez variables predictoras, y compararon árboles de decisión, regresión logística, _k_ vecinos más cercanos, bosque aleatorio y Naive Bayes. Este último obtuvo el mejor desempeño, con una sensibilidad del 74 %, una precisión del 43 % y una exactitud del 70 %. Los autores advirtieron que el desbalance entre clases condicionó los resultados, aspecto que también se presenta en la ENDES 2025, donde predominan los casos sin anemia.

Finalmente, #cite(<quispe_anemia_2025>, form: "prose") construyeron un modelo predictivo del riesgo de anemia en niños menores de cinco años de distintas regiones del Perú utilizando la ENDES 2022-2024. A partir de 55 808 registros y de un proceso de ingeniería de características que generó 78 variables, compararon diversos algoritmos y encontraron que la regresión logística regularizada ofrecía el mejor equilibrio, con un AUC de 0,72 y una sensibilidad del 74,72 %. Los autores concluyeron que la anemia responde a desigualdades estructurales que trascienden la suplementación nutricional. Este antecedente confirma la viabilidad de emplear la ENDES con fines predictivos y muestra que los modelos lineales e interpretables alcanzan un rendimiento competitivo frente a alternativas más complejas.

La @tab-antecedentes sintetiza los aspectos metodológicos de los estudios revisados.

#figure(
  table(
    columns: (auto, 1.3fr, 1.2fr, 1fr),
    align: (left, left, left, left),
    stroke: none,
    inset: (x: 5pt, y: 4pt),
    table.hline(stroke: 1pt),
    table.header([*Autor (año)*], [*Fuente y muestra*], [*Técnica principal*], [*Resultado relevante*]),
    table.hline(stroke: 0.5pt),
    [#cite(<urrechaga_mda_2013>, form: "prose")], [Hemogramas, 628 pacientes (España)], [Análisis discriminante multivariable], [87,9 % de β-talasémicos bien clasificados],
    [#cite(<khan_anemia_2019>, form: "prose")], [DHS 2011, 2013 niños (Bangladés)], [LDA, CART, k-NN, SVM, RF, regresión logística], [RF: exactitud 68,53 %],
    [#cite(<kassaw_anemia_2023>, form: "prose")], [EDHS 2016, 9501 niños (Etiopía)], [Boruta (bosque aleatorio)], [Diez predictores sociodemográficos],
    [#cite(<velasquez_anemia_2016>, form: "prose")], [ENDES 2007-2013 (Perú)], [Regresión logística multivariada], [Prevalencia 47,9 %; 12 factores],
    [#cite(<marcos_anemia_2023>, form: "prose")], [Datos abiertos, 138 369 registros (Lima)], [DT, RL, k-NN, RF, Naive Bayes], [NB: exactitud 70 %],
    [#cite(<quispe_anemia_2025>, form: "prose")], [ENDES 2022-2024, 55 808 registros (Perú)], [Regresión logística regularizada], [AUC 0,72; sensibilidad 74,72 %],
    table.hline(stroke: 1pt),
  ),
  caption: [Síntesis de los antecedentes de la investigación],
) <tab-antecedentes>

#par(first-line-indent: 0em)[
  _Nota._ Elaboración propia. CART = árboles de clasificación y regresión; DT = árbol de decisión; k-NN = _k_ vecinos más cercanos; NB = Naive Bayes; RF = bosque aleatorio; RL = regresión logística; SVM = máquina de vectores de soporte.
]

En conjunto, los antecedentes muestran que la anemia infantil puede anticiparse con un desempeño aceptable a partir de variables no hematológicas, y que los modelos lineales —como la regresión logística y el LDA— ofrecen resultados competitivos con la ventaja de ser interpretables. No obstante, en la revisión realizada no se identificaron estudios peruanos que apliquen el análisis discriminante lineal —propuesto originalmente por #cite(<fisher_1936>, form: "prose") y sistematizado en obras de referencia como la de #cite(<james_islr_2021>, form: "prose")— para discriminar de forma simultánea los distintos niveles de anemia con los datos más recientes de la ENDES. Este vacío cobra mayor relevancia tras la actualización de los puntos de corte de hemoglobina de la Organización Mundial de la Salud @who_hb_2024, adoptada en el país mediante la RM 251-2024-MINSA, con la cual la prevalencia nacional en niños de 6 a 35 meses se estimó en 35,3 % para 2024, frente al 43,7 % obtenido con el criterio anterior @inei_ppr_2025. Lo expuesto justifica la presente investigación.
