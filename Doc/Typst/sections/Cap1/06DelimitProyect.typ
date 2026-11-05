#import "@preview/versatile-apa-caratula-moded:7.1.5": *
#import "../../bib_state.typ": bib_state
#context bib_state.get()

== Delimitación del Proyecto

=== Delimitación Espacial o Geográfica

La investigación se desarrolla en el departamento de Ayacucho, abarcando la información epidemiológica, social y demográfica del ámbito regional a partir de los datos representativos por área de residencia (urbana y rural) recopilados en la encuesta de hogares. 

=== Delimitación Temporal

El estudio se ejecutará durante el periodo 2026, utilizando para la construcción, entrenamiento y evaluación del modelo predictivo los microdatos oficiales de la Encuesta Demográfica y de Salud Familiar (ENDES 2025) del @inei2024endes. 

=== Delimitación Poblacional 

La población de estudio está constituida por la población infantil (niñas y niños de 6 a 59 meses de edad / menores de 5 años) residentes en el departamento de Ayacucho y evaluados en el módulo de salud infantil de la ENDES. 

=== Delimitación Temática y Metodológica

El trabajo se enmarca en las áreas de Salud Pública, Ciencia de Datos y Bioestadística. Consiste en la aplicación del Análisis Discriminante Lineal (LDA) para discriminar y clasificar a la población infantil según la presencia o ausencia de anemia (y sus niveles de severidad), integrando la concentración de hemoglobina (g/dL) ajustada por altitud con factores sociales (nivel educativo de la madre, índice de riqueza del hogar, acceso a servicios básicos) y biológicos (edad, sexo del niño, estado nutricional antropométrico, anemia materna y altitud de residencia) derivados de los módulos RECH6, RECH5 y REC44 de la ENDES.