#import "@preview/versatile-apa-caratula-moded:7.1.5": *
#import "../../bib_state.typ": bib_state
#context bib_state.get()

== Planteamiento del Problema

La anemia infantil es un problema de salud pública de alcance mundial. La disminución de la hemoglobina compromete el transporte de oxígeno hacia los tejidos y, durante los primeros años de vida, puede afectar el crecimiento físico y el desarrollo cognitivo de los niños.

En el Perú, la situación continúa siendo preocupante. Según el Instituto Nacional de Estadística e Informática (INEI, 2026), en 2025 el 34,9% de los niños de 6 a 35 meses presentó anemia, con una brecha entre el ámbito rural con un 43,2% y un ámbito urbano de 31,5%. En Ayacucho, el problema es aún mayor, ya que según los datos del INEI (2025) se reportó una prevalencia de 45,7% en 2024, y los resultados de la ENDES 2025 señalan un 44,1% a nivel regional (Mesa de Concertación para la Lucha contra la Pobreza, s. f.), cifras superiores al promedio nacional. A ello se suma la condición altoandina del departamento, pues la altitud modifica la concentración de hemoglobina y obliga a ajustar su interpretación (Organización Mundial de la Salud, 2024).

El diagnóstico de la anemia depende de la medición de hemoglobina en cada niño. Sin embargo, su presencia es el resultado de la interacción de múltiples factores biológicos, como la edad, sexo, estado nutricional antropométrico y anemia materno, junto a factores sociales, como el nivel educativo de la madre, área de residencia, índice de riqueza del hogar y acceso a servicios básicos, cuyo efecto no resulta fácilmente evidente cuando se examinan de forma aislada. La ENDES registra estas variables de manera sistemática, pero sus microdatos contienen códigos y mediciones perdidas, como niños sin determinación válida de hemoglobina, que exigen una depuración antes de cualquier modelamiento.

En base a esto, el Análisis Discriminante Lineal (LDA) es una gran alternativa interpretable para clasificar a los niños según su condición de anemia y cuantificar el aporte de cada factor. Pero, su aplicación requiere verificar la normalidad multivariante, la homogeneidad de las matrices de covarianza y la ausencia de multicolinealidad.

Por lo tanto, tenemos la necesidad de evaluar si, a partir de factores sociales y biológicos disponibles en la ENDES 2025 y sin utilizar directamente los niveles de hemoglobina, es posible clasificar de manera confiable a los niños de 6 a 59 meses de Ayacucho con y sin anemia. Este modelo se usa como una herramienta complementaria de apoyo a la identificación de grupos de riesgo, y no como sustituto de la medición clínica de hemoglobina.