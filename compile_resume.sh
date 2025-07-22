#!/bin/bash

# Check if XeLaTeX is installed
if ! command -v xelatex &> /dev/null; then
    echo "XeLaTeX is not installed. Please install a LaTeX distribution with XeLaTeX support."
    exit 1
fi

# Create font directories if they don't exist
mkdir -p fonts/lato
mkdir -p fonts/raleway

# Check if fonts are present, if not, download them
if [ ! "$(ls -A fonts/lato)" ]; then
    echo "Lato fonts not found. Downloading..."
    # Download Lato fonts
    curl -L -o lato.zip "https://www.latofonts.com/download/lato2ofl.zip"
    unzip -j lato.zip "Lato2OFL/Lato-Lig.ttf" "Lato2OFL/Lato-Reg.ttf" "Lato2OFL/Lato-RegIta.ttf" "Lato2OFL/Lato-Bol.ttf" "Lato2OFL/Lato-LigIta.ttf" "Lato2OFL/Lato-Hai.ttf" -d fonts/lato
    rm lato.zip
fi

if [ ! "$(ls -A fonts/raleway)" ]; then
    echo "Raleway fonts not found. Downloading..."
    # Download Raleway fonts
    curl -L -o raleway.zip "https://fonts.google.com/download?family=Raleway"
    unzip -j raleway.zip "static/Raleway-ExtraLight.ttf" "static/Raleway-Medium.ttf" -d fonts/raleway
    rm raleway.zip
fi

# Compile the resume
echo "Compiling resume..."
xelatex rageswari_resume.tex

# Check if compilation was successful
if [ $? -eq 0 ]; then
    echo "Resume compiled successfully. Output file: rageswari_resume.pdf"
else
    echo "Error compiling resume. Please check the LaTeX file for errors."
fi

# Clean up auxiliary files
rm -f *.aux *.log *.out