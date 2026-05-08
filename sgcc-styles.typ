#let sgcc-conf(doc) = {
  set page(paper: "a4")

  set text(
    font: ((name: "Times New Roman", covers: "latin-in-cjk"), "FZFangSong-Z02"),
    size: 16pt,
    top-edge: "ascender",
    bottom-edge: "descender",
  )

  show par: set par(
    first-line-indent: (amount: 2em, all: true),
    justify: true,
    leading: 12pt,
    spacing: 12pt,
  )

  show enum: e => {
    for (i, item) in e.children.enumerate() {
      let n = i + 1
      block(spacing: 12pt, [#h(2em) #n\. #item.body])
    }
  }

  let h1 = counter("h1")
  let h2 = counter("h2")
  let h3 = counter("h3")
  let h4 = counter("h4")

  show heading.where(level: 1): it => {
    set text(
      font: ((name: "Times New Roman", covers: "latin-in-cjk"), "FZHei-B01"),
      size: 16pt,
    )
    h1.step()
    h2.update(0)
    h3.update(0)
    h4.update(0)
    block(
      inset: (left: 2em),
      spacing: 12pt,
    )[#context h1.display("一、") #it.body]
  }

  show heading.where(level: 2): it => {
    set text(
      font: ((name: "Times New Roman", covers: "latin-in-cjk"), "FZKai-Z03"),
      size: 16pt,
    )
    h2.step()
    h3.update(0)
    h4.update(0)
    block(
      inset: (left: 2em),
      spacing: 12pt,
    )[#context h2.display("（一）") #it.body]
  }

  show heading.where(level: 3): it => {
    set text(
      font: ((name: "Times New Roman", covers: "latin-in-cjk"), "FZFangSong-Z02"),
      size: 16pt,
    )
    h3.step()
    h4.update(0)
    block(
      inset: (left: 2em),
      spacing: 12pt,
    )[#context h3.display("1. ") #it.body]
  }

  show heading.where(level: 4): it => {
    set text(
      font: ((name: "Times New Roman", covers: "latin-in-cjk"), "FZFangSong-Z02"),
      size: 16pt,
    )
    h4.step()
    block(
      inset: (left: 2em),
      spacing: 12pt,
    )[#context h4.display("（1）") #it.body]
  }

  doc
}

#let sgcc-title(title) = align(center)[
  #v(22pt)
  #text(size: 22pt, font: "FZXiaoBiaoSong-B05")[
    #title
  ]
  #v(22pt)
]
