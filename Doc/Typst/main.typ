#import "@preview/versatile-apa-moded-tesis:7.1.5": *
#import "@preview/fontawesome:0.6.0": *
#import "@preview/gentle-clues:1.3.1": *
#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.1": *
#import "@preview/fontawesome:0.6.0": *
#import "bib_state.typ": bib_state
#bib_state.update(none)


#let doc-title = [
  Análisis Discriminante Lineal para la identificación temprana de riesgo de anemia infantil utilizando microdatos de la ENDES en Ayacucho, 2026
]
#show: versatile-apa.with(
  title: doc-title,

  // 2. ASIGNATURA (Lo ponemos en 'authors' para que salga primero debajo del título)
  authors: (
    (
      name: [
        #align(center)[
          #text(weight: "bold")[Asignatura:] INTELIGENCIA ARTIFICIAL I (IS-484)
        ]
      ],
      affiliations: ("AF-1",),
    ),
  ),

  // 3. CABECERA UNSCH (Sigue empujada hacia arriba con -8em)
  affiliations: (
    (
      id: "AF-1",
      name: [
        #v(-8em)
        #align(center)[
          #text(size: 14pt, weight: "bold")[UNIVERSIDAD NACIONAL SAN CRISTÓBAL DE HUAMANGA] \
          #v(0.4em)
          #text(size: 13pt, weight: "bold")[FACULTAD DE INGENIERÍA DE MINAS, GEOLOGÍA Y CIVIL] \
          #v(0.4em)
          #text(size: 12pt, weight: "bold")[ESCUELA PROFESIONAL DE INGENIERÍA DE SISTEMAS]
          // Logo disponible en assets/img/stella/logo_unsch.png (extraído de "IA. Proy. Final.pdf").
          // Para usarlo: #image("assets/img/stella/logo_unsch.png", height: 4cm)
        ]
      ],
    ),
  ),

  // 4. DOCENTE (Lo ponemos en 'course' para que salga segundo)
  course: [
    #align(center)[
      #text(weight: "bold")[Integrantes:] \
      Gutierrez Mendoza, Miguel Eduardo \
      Mallqui Sosa, Gian Carlos \
      Pretell Reymundo, Leydi Aneth \
      Ramos Lopez, Isaias \
      Torres Morales, Sem Cham \
      Villanueva Mayhua, Tedy Breslin \
    ]
  ],

  // 5. ALUMNO (Lo ponemos en 'instructor' para que salga tercero)
  instructor: [
    #align(center)[
      #text(weight: "bold")[Docente:] VILA HUAMAN, Eloy
    ]
  ],

  // 6. PIE DE PÁGINA (Centrado)
  due-date: [
    #v(3em)
    #align(center)[
      #text(weight: "bold")[Ayacucho – Perú] \
      #text(weight: "bold")[2026]
    ]
  ],

  // Configuración de estilo general (INTACTA)
  font-family: "Times New Roman",
  font-size: 12pt,
  region: "us",
  language: "es",
  paper-size: "us-letter",
  implicit-introduction-heading: false,
  abstract-as-description: false,
)

#set page(numbering: "i")
#set par(justify: true)
#set heading(numbering: none)


//--↓--↓--↓--↓-------Índices---------↓--↓--↓--↓--
//Indice
#outline(title: [ÍNDICE])

//Indice de Figuras
#pagebreak()
#outline(target: figure.where(kind: image), title: [FIGURAS])

//Indice de Tablas
#pagebreak()
#outline(target: figure.where(kind: table), title: [Tablas])
//--↑--↑--↑--↑-----Fin Índices-------↑--↑--↑--↑--


//RESUMEN
#pagebreak()
#include "sections/00resumen.typ"

#pagebreak()
#set page(numbering: "1")

//INTRODUCCIÓN
#include "sections/01introduccion.typ"

//--↓--↓--↓--↓----- Inicio Cuerpo Real del Trabajo----↓--↓--↓--↓--

#show heading.where(level: 1): set heading(numbering: "I.")
#show heading.where(level: 1): it => {
  // Numeracion real del heading
  let num = counter(heading).display(it.numbering)
  block(
    width: 100%,
    // Espaciado superior e inferior
    above: 1.5em,
    below: 1em,
  )[
    // Centrado APA
    #align(center)[
      // Texto en negrita
      #strong[
        // Numero + titulo, quita el comentario de num.
        //#num
        #h(0.5em)
        #it.body
      ]
    ]
  ]
}
#set heading(numbering: "1.1.")
#show: codly-init.with()
#codly(
  languages: codly-languages,  // Carga iconos y colores oficiales
  display-name: true,          // Muestra el nombre del archivo/lenguaje arriba
  display-icon: true,          // Muestra el icono del lenguaje (ej. C#)
  zebra-fill: luma(240),       // Color de fondo alternado (estilo VS Code)
  number-format: none,         // Usa "none" si no quieres números de línea, o remove esta línea para tenerlos
)
#show raw.where(block: false): it => {
  box(
    fill: rgb(43, 43, 43),
    radius: 4pt,
    inset: (x: 4pt, y: 0pt),
    outset: (y: 2pt),
  )[
    #text(
      font: "FiraCode Nerd Font Mono",
      fill: white,
      size: .9em,
      it.text
    )
  ]
}


#pagebreak()
= CAPÍTULO I: ASPECTOS GENERALES DE LA INVESTIGACIÓN

#include "sections/Cap1/01PlanteamientoProb.typ"
#include "sections/Cap1/02FormProb.typ"
#include "sections/Cap1/03ObjetivoGeneral.typ"
#include "sections/Cap1/04ObjetivosEspec.typ"
#include "sections/Cap1/05JustificaProyecto.typ"
#include "sections/Cap1/06DelimitProyect.typ"
#include "sections/Cap1/07MarcoTeorico.typ"
#include "sections/Cap1/08AntecedenteInvesti.typ"
#pagebreak()

= CAPÍTULO II: DESARROLLO DEL PROYECTO

//#include "sections/Cap2/01DescripOrganizacion.typ"
#include "sections/Cap2/02DiagnSituacionActual.typ"
//#include "sections/Cap2/03Materiales.typ"
#include "sections/Cap2/04Metodologia.typ"
#include "sections/Cap2/05Desarrollo.typ"
#include "sections/Cap2/06ResultadosObtenidos.typ"
#include "sections/Cap2/07AnalisisResultados.typ"
#pagebreak()

/*
= CAPÍTULO III: PRESUPUESTO Y CRONOGRAMA


#include "sections/Cap3/01Cronograma.typ"
#include "sections/Cap3/02Presupuesto.typ"
*/

//--↑--↑--↑--↑-----Fin Cuerpo Real del Trabajo----↑--↑--↑--↑--

#include "sections/02conclusiones.typ"

#pagebreak()
#include "sections/03recomendaciones.typ"


#pagebreak()
= BIBLIOGRAFÍA


#bibliography(
  "bibliography/ref.bib",
  style: "csl/apa.csl",
  full: false,
  title: none,
)
