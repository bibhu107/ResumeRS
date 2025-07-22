# Rageswari Subudhi - Resume

This repository contains Rageswari Subudhi's professional resume in multiple formats.

## View Resume Online

You can view the resume online at: [https://YOUR-USERNAME.github.io/YOUR-REPO-NAME/](https://YOUR-USERNAME.github.io/YOUR-REPO-NAME/)

## Available Formats

1. **Web Version**: `index.html` - Responsive web version of the resume
2. **LaTeX Version**: `rageswari_resume.tex` - Source file for the LaTeX version
3. **Text Version**: `output/rageswari_resume.txt` - Plain text version

## Compiling the LaTeX Version

If you want to generate the PDF from the LaTeX source:

1. Install a LaTeX distribution with XeLaTeX:
   - For macOS: `brew install --cask mactex`
   - For Windows: Install MiKTeX from https://miktex.org/
   - For Linux: `sudo apt-get install texlive-full`

2. Run the compilation script:
   ```bash
   ./compile_resume.sh
   ```

3. The PDF will be generated in the `output` directory

## Local Development

To view the resume locally:

1. Clone this repository
2. Open `index.html` in your web browser

## Updating the Resume

1. Edit the appropriate source file:
   - For web version: `index.html`
   - For LaTeX version: `rageswari_resume.tex`

2. Commit and push your changes
3. GitHub Pages will automatically update the online version

## License

This resume template is based on the Deedy-Resume template, available under the Apache License 2.0.
