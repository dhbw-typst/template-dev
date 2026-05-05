// LTeX: enabled=false

#import "base.typ": project, signature-line
#import "../utils.typ": __linguify-content
#import "@preview/linguify:0.5.0": *

#let ihk-adapter(
  digital-submission: true,
  confidentiality-clause: true,
  examination: none,
  training-occupation: "Fachinformatiker für Anwendungsentwicklung",
  authors: (
    (
      firstname: none,
      lastname: none,
      examinee-number: none,
      signature: none,
    ),
  ),
  signature-city: "Karlsruhe",
  submission-date: datetime.today(),
  submission-date-format: "[day].[month].[year]",
  processing-period-weeks: none,
  company-name: "Corp SE",
  company-city: "Berlin",
  company-logo: image("../do_not_touch/Company-Logo.svg"),
  company-department: none,
  company-supervisor: none,
  ..args,
  body,
) = {
  let submission-info = [
    #__linguify-content("as-part-of-examination-ihk")

    *#examination*

    #__linguify-content("in-the-training-occupation")\
    #training-occupation
  ]
  let metadata = (
    __linguify-content("submission-date"),
    submission-date.display(submission-date-format),
    __linguify-content("processing-duration"),
    __linguify-content("weeks", args: (count: processing-period-weeks)),
    __linguify-content("examinee-number"),
    authors.map(a => a.examinee-number).join(linebreak()),
    __linguify-content("training-company"),
    company-name + linebreak() + company-city,
    __linguify-content("department"),
    company-department,
    __linguify-content("supervisor-at-training-company"),
    company-supervisor,
  )
  let statutory-declaration = {
    pagebreak(weak: true)
    align(center, heading(
      __linguify-content("statutory-declaration"),
      level: 1,
    ))

    // Using the statutory declaration of the dhbw, as there is no template for the IHK
    __linguify-content("statutory-declaration-note-dhbw", args: (
      author-count: authors.len(),
    ))

    set grid.cell(align: left, inset: (x: 1em, y: 0.3em))

    for a in authors {
      signature-line(
        author: a,
        date: submission-date,
        date-format: submission-date-format,
        digital: digital-submission,
        city: signature-city,
      )
    }
  }

  let confidentiality-clause = {
    pagebreak(weak: true)
    align(center, heading(
      __linguify-content("confidentiality-agreement"),
      level: 1,
    ))

    __linguify-content("confidentiality-agreement-note-ihk")
  }

  show: project.with(
    logo-left: company-logo,
    logo-right: image("../do_not_touch/IHK-Logo.svg"),
    authors: authors,
    submission-info: submission-info,
    metadata: metadata,
    preamble: (
      statutory-declaration,
      confidentiality-clause,
    ),
    ..args,
  )
  body
}
