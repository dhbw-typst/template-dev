#set page(
  margin: (y: 2.5cm, rest: 0cm),
  background: image("word-comparison.jpg"),
)


#align(center, heading(numbering: none, "Word-Typst comparison"))
#v(65.5pt)

#{
  set text(fill: green)

  grid(
    columns: (1fr, 1fr),
    stroke: 1pt,
    [
      #set text(size: 12.04pt, font: "Arial")
      #set par(leading: 1em, spacing: 1.5em)
      #v(9.2pt)

      Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.

      New Paragraph
    ],
    [
      #set text(
        size: 12pt,
        font: "New Computer Modern",
      )
      #set par(leading: 1.05em, spacing: 1.5em)
      #v(12pt)

      Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.

      New Paragraph
    ],
  )
}

#v(2cm)
#pad(x: 2.5cm)[
  In red: Word document, Arial and New Computer Modern at 12pt font size. Arial with a line spacing of 1.5, New Computer Modern with a line spacing of 1.22 to match Arial.

  In green: Typst code to match Word as close as possible.

  Arial:
  ```typst
  #set text(size: 12.04pt, font: "Arial")
  #set par(leading: 1em, spacing: 1.5em)
  ```

  New Computer Modern:
  ```typst
  #set text(
    size: 12pt,
    font: "New Computer Modern",
  )
  #set par(leading: 1.05em, spacing: 1.5em)
  ```
]
