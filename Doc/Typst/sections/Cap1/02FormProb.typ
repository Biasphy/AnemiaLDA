#import "@preview/versatile-apa-caratula-moded:7.1.5": *
#import "../../bib_state.typ": bib_state
#context bib_state.get()

== Formulación del Problema

=== Problema General

¿En qué medida un modelo predictivo basado en el Análisis Discriminante Lineal (LDA) permite clasificar a los niños de 6 a 59 meses del departamento de Ayacucho según la presencia o ausencia de anemia, a partir de factores sociales y biológicos registrados en la Encuesta Demográfica y de Salud Familiar (ENDES) 2025?

=== Problemas Específicos

+ ¿Cuáles son las características de los factores sociales, sea el nivel educativo de la madre, área de residencia, índice de riqueza del hogar y acceso a servicios básicos, y biológicos, como la edad y sexo del niño, estado nutricional antropométrico, anemia materna y altitud de residencia, de los niños de 6 a 59 meses de Ayacucho, y cuáles de ellos presentan diferencias significativas entre los grupos con y sin anemia?

+ ¿Qué función discriminante lineal logra separar mejor a los niños con y sin anemia, en qué medida se cumplen los supuestos del modelo, como lo son la normalidad multivariante, homogeneidad de matrices de covarianza y ausencia de multicolinealidad, y cuál es el aporte relativo de cada factor a la discriminación?

+ ¿Cuál es la capacidad predictiva y de generalización del modelo de Análisis Discriminante Lineal, medida mediante la matriz de confusión, la exactitud, la sensibilidad, la especificidad, el área bajo la curva ROC (AUC) y la validación cruzada?