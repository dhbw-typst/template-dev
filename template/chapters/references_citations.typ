#import "../template/lib.typ": codefigure
#import "basic_formatting.typ": typst-preview
= References and Citations

== Local Elements
You can reference local elements like figures, code blocks, and sections using the `ref()` function. You can also use the synax sugar `<ref>` to define and `@<ref>` to reference references.

#typst-preview(
  "Local Element References in Typst",
  "=== Important Section <section-1>
Some important text

=== Other Section
More important text, just like @section-1",
)

== Code Blocks
If you use the provided `codefigure` function, you can specify a reference name via the `reference` parameter. This allows you to reference the code block later in the document.

#typst-preview(
  "Code Figure Referencing in typst",
  "#import \"../template/lib.typ\": codefigure
#codefigure(caption: [Code with Reference], reference: \"my-rust-code\")[```rust
  fn main() {
    panic!(\"Hilfe!\");
  }
  ```]

  Look at my code in @my-rust-code!",
)

== Bibliography
Typst supports references to external sources, such as books, articles, and websites. You can include a `.yaml` or `.bib` file with your references and use the `cite()` function to reference them in your document. Again, you can use the same syntax sugar `@<ref>` to cite.

#typst-preview(
  "Bibliography Referencing in Typst",
  "#quote(attribution: [Molly Weasley\ @harry[S.~768]])[
  Just Because You're Allowed To Use Magic Now Does Not Mean You Have To Whip Your Wands Out For Everything!]",
)

== Acronyms and Glossary

This template supports both acronyms for abbreviations and a glossary for term definitions. Both are implemented using the `glossarium` package, which can be found here: #link("https://typst.app/universe/package/glossarium/").

=== Acronyms
You can define acronyms in the project configuration. We recommend using this to define abbreviations via the `short` parameter. Use the `@acr` function to reference an acronym and `@acr:pl` for its plural form. On the first usage, the full long form is displayed. On subsequent usages, only the short form is shown.

All used acronyms will be automatically listed in the "List of Abbreviations".

#typst-preview(
  "Acronyms in Typst",
  "I don't understand @NN or @NN:pl and never will understand.",
)

=== Glossary
For more detailed explanations of technical terms, you can add entries to the glossary in the project configuration. We recommend that you only specify the `long` form and a `description` here, but this is freely customizable.

#typst-preview(
  "Glossary Entries in Typst",
  "When working with @typ, I don't have to reinvent the wheel over and over again.",
)
