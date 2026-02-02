# Open Korean Donghwa (평범한 동화책)

This repository contains a growing library of **open‑source Korean storybooks** accompanied by AI‑generated illustrations.  Each story lives in its own Quarto file and can be rendered into a standalone PDF.  The project aims to provide creative, culturally resonant tales free from copyright complications.

## How it works

- Stories are written in [Quarto](https://quarto.org/) using Markdown syntax (`*.qmd`).
- Illustrations live in `assets/images/` and are linked from within the stories.
- The repository includes a shared `_quarto.yml` that specifies Korean fonts and page settings.  When you run `quarto render 001-sun-and-wind.qmd`, Quarto generates a polished PDF.
- You can also render a story to HTML for quick preview (`quarto render 001-sun-and-wind.qmd --to html`).

## Building a PDF

To build a PDF from one of the stories, install Quarto, then run:

```bash
quarto render 001-sun-and-wind.qmd
```

The output `001-sun-and-wind.pdf` will appear next to your source file.  Replace the file name with your own story file when adding new tales.

## Contributing

We welcome new stories and art!  Please observe the following guidelines:

1. **Originality:** Only submit text and images that you own or are authorized to license.  Do not copy existing copyrighted stories or artwork.
2. **AI images:** When you generate illustrations using an AI tool, record the prompt, model/version, and any seeds used.  Include this metadata in the commit message or a separate provenance file so future maintainers understand the source.
3. **License sign‑off:** All contributions are licensed under the terms defined in the `LICENSE` file.  By submitting content you agree to these terms.

See `CONTRIBUTING.md` (not yet included) for more details on style and submission conventions.

## License

This project is licensed under the Creative Commons Attribution 4.0 International License (CC BY 4.0).  See [`LICENSE`](LICENSE) for the full text.