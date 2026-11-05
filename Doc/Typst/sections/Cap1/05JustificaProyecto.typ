#import "@preview/versatile-apa-caratula-moded:7.1.5": *
#import "../../bib_state.typ": bib_state
#context bib_state.get()

== Justificación del Proyecto

=== Justificación Social y Sanitaria 
+ *Consecuencias de la Anemia en la Infancia y Desarrollo Individual*. La primera infancia representa una etapa crítica caracterizada por un acelerado crecimiento físico y desarrollo cerebral. La deficiencia de hierro durante este periodo reduce la síntesis de hemoglobina y limita el transporte de oxígeno a los tejidos, ocasionando alteraciones permanentes en las funciones cognitivas y psicomotoras. De acuerdo con la Dirección Regional de Salud de Ayacucho @diresa2024plan, la anemia contraída a edades tempranas (menores de 3 años) "reduce en 9% su coeficiente intelectual comparado a un niño que no tuvo esta enfermedad" (p. 3). Asimismo, la afectación en la esfera afectiva y socioemocional provoca que los niños anémicos puedan "comportarse más retraídos, menos sociables o irritables" @diresa2024plan, comprometiendo además su capacidad de respuesta inmunológica y su rendimiento escolar futuro.

+ *Impacto Social y Socioeconómico.* A nivel macro, el déficit acumulado en las habilidades cognitivas y motoras disminuye la capacidad de trabajo físico y la productividad laboral durante la vida adulta. Como sostienen @mansilla2017modelo, los efectos negativos de la anemia y la desnutrición en la niñez representan "un escollo importante para lograr el desarrollo y superar la pobreza" (p. 2), perpetuando el círculo intergeneracional de la vulnerabilidad socioeconómica e incrementando la demanda asistencial sobre el sistema de salud pública.

+ *Magnitud Epidemiológica Real en Ayacucho y Huamanga.* La ejecución de esta investigación en el departamento de Ayacucho se fundamenta en la elevada prevalencia observada en la región. Según los datos oficiales del Instituto Nacional de Estadística e Informática @inei2024endes, durante el año 2024 la anemia afectó al *51,0%* de los niños de 6 a 35 meses de edad en Ayacucho bajo los criterios habituales de medición (RM 363-2022-MINSA). Al aplicar la actualización de la Directriz de la OMS (RM 251-2024-MINSA), la prevalencia regional en este grupo de edad alcanzó el *45,7%* en 2024. En la población ampliada de *6 a 59 meses de edad*, la prevalencia departamental registrada en 2024 fue de *37,6%* @inei2024endes.
Existen brechas territoriales acentuadas según la zona de residencia:
  - *Área rural de Ayacucho:* La prevalencia alcanzó un *59,4%* en niños de 6 a 35 meses en 2024 (o *52,2%* según la directriz OMS 2024) y un *45,2%* en niños de 6 a 59 meses @inei2024endes.
  -  *Área urbana de Ayacucho:* Registró un *43,3%* en niños de 6 a 35 meses (o *39,6%* según OMS 2024) y un *31,4%* en el grupo de 6 a 59 meses @inei2024endes.

Respecto a la severidad del cuadro clínico en niños de 6 a 35 meses, el *30,8%* presentó anemia leve y el *19,9%* anemia moderada, cifra que en el sector rural se eleva al *28,9%* de casos moderados @inei2024endes. En el caso de los niños de 6 a 59 meses, el *25,0%* registró anemia leve y el *12,5%* anemia moderada (alcanzando el *19,4%* en zonas rurales) [@inei2024endes].

En datos absolutos del sector salud, la DIRESA @diresa2024plan reporta que en el departamento de Ayacucho "existen más de 21 mil niños (21 892) menores de tres años con anemia" (p. 15). De este total regional, la *provincia de Huamanga* concentra la mayor carga asistencial con *4,177 niños diagnosticados* con anemia en el registro oficial HIS-MINSA, superando a provincias como Huanta (1,167 casos), La Mar (1,111 casos) y Lucanas (749 casos) @diresa2024plan.

=== Justificación Teórica 
El estudio aporta al cuerpo teórico de la bioestadística y la epidemiología al evaluar la capacidad probabilística del Análisis Discriminante Lineal (LDA) para estratificar grupos de riesgo poblacional a partir de microdatos de encuestas nacionales de salud. Permite validar modelos cuantitativos de discriminación multivariada en poblaciones expuestas a altitud geográfica (como la sierra ayacuchana), integrando la relación de variables sociodemográficas y nutricionales asociadas a los niveles de hemoglobina. 

=== Justificación Práctica 
En el plano práctico, el desarrollo de este modelo algorítmico ofrece una *herramienta informática de bajo costo para la vigilancia epidemiológica continua*. Al ser entrenado con bases de datos públicas como la ENDES @inei2024endes, proporcionará a los tomadores de decisiones de la DIRESA y gobiernos locales una metodología objetiva para predecir e identificar a la población infantil en riesgo de anemia, optimizando la focalización de recursos asistenciales y programas de suplementación nutricional en la región.

===  Justificación Metodológica 
Desde la perspectiva metodológica, el Análisis Discriminante Lineal (LDA) representa un abordaje analítico superior al tratamiento unidimensional de la hemoglobina. El LDA permite construir funciones discriminantes óptimas combinando linealmente variables continuas y categóricas correlacionadas de los módulos RECH6, RECH5 y REC44, verificando rigurosamente los supuestos de normalidad multivariante, homogeneidad de matrices de covarianza (prueba M de Box) y ausencia de multicolinealidad, validando su capacidad de generalización mediante validación cruzada y curvas ROC.