# Resume Output Files

This directory contains the output files for Rageswari Subudhi's resume.

## Available Formats

1. **HTML Version** (`rageswari_resume.html`)
   - Can be opened in any web browser
   - Print to PDF from your browser to create a PDF version
   - To print to PDF:
     - Open the HTML file in Chrome, Firefox, or Edge
     - Press Ctrl+P (Windows/Linux) or Cmd+P (Mac)
     - Select "Save as PDF" as the destination
     - Click "Save" or "Print"

2. **Text Version** (`rageswari_resume.txt`)
   - Plain text format that can be opened in any text editor
   - Useful for copying content to other applications

## Creating a PDF with LaTeX

To generate the high-quality LaTeX PDF version:

1. Install XeLaTeX (part of a LaTeX distribution like MacTeX, MiKTeX, or TeX Live)
2. Run the compilation script from the parent directory:
   ```
   cd ..
   ./compile_resume.sh
   ```
3. The PDF will be generated and moved to this directory

## Notes

- The LaTeX version provides the best formatting and professional appearance
- The HTML version is a good alternative if LaTeX is not available
- The text version is provided as a fallback and for easy content copying
