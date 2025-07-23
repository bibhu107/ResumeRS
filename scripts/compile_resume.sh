#!/bin/bash

# Resume Compilation Script
# Compiles LaTeX resume to PDF and generates text version

set -e  # Exit on any error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Configuration
LATEX_DIR="src/latex"
OUTPUT_DIR="dist"
TEMP_DIR="temp"
RESUME_NAME="rageswari_resume"

# Create directories if they don't exist
mkdir -p "$OUTPUT_DIR"
mkdir -p "$TEMP_DIR"

echo -e "${BLUE}🚀 Starting resume compilation...${NC}"

# Check if XeLaTeX is available
if ! command -v xelatex &> /dev/null; then
    echo -e "${RED}❌ XeLaTeX is not installed. Please install a LaTeX distribution with XeLaTeX support.${NC}"
    echo -e "${YELLOW}For macOS: brew install --cask mactex${NC}"
    echo -e "${YELLOW}For Windows: Install MiKTeX from https://miktex.org/${NC}"
    echo -e "${YELLOW}For Linux: sudo apt-get install texlive-full${NC}"
    exit 1
fi

echo -e "${BLUE}📄 Compiling LaTeX to PDF...${NC}"

# Change to LaTeX directory for compilation
cd "$LATEX_DIR"

# Compile LaTeX to PDF (run twice for proper references)
xelatex -output-directory="../../$TEMP_DIR" "$RESUME_NAME.tex"
xelatex -output-directory="../../$TEMP_DIR" "$RESUME_NAME.tex"

# Move back to root directory
cd ../..

# Move PDF to output directory
if [ -f "$TEMP_DIR/$RESUME_NAME.pdf" ]; then
    mv "$TEMP_DIR/$RESUME_NAME.pdf" "$OUTPUT_DIR/"
    echo -e "${GREEN}✅ PDF generated successfully: $OUTPUT_DIR/$RESUME_NAME.pdf${NC}"
else
    echo -e "${RED}❌ PDF generation failed${NC}"
    exit 1
fi

# Generate text version from PDF if pdftotext is available
if command -v pdftotext &> /dev/null; then
    echo -e "${BLUE}📝 Generating text version...${NC}"
    pdftotext "$OUTPUT_DIR/$RESUME_NAME.pdf" "$OUTPUT_DIR/$RESUME_NAME.txt"
    echo -e "${GREEN}✅ Text version generated: $OUTPUT_DIR/$RESUME_NAME.txt${NC}"
else
    echo -e "${YELLOW}⚠️  pdftotext not found. Skipping text generation.${NC}"
    echo -e "${YELLOW}Install poppler-utils to enable text generation.${NC}"
fi

# Clean up temporary files
echo -e "${BLUE}🧹 Cleaning up temporary files...${NC}"
rm -rf "$TEMP_DIR"

# Display file sizes
echo -e "${BLUE}📊 Generated files:${NC}"
ls -lh "$OUTPUT_DIR/$RESUME_NAME".*

echo -e "${GREEN}🎉 Resume compilation completed successfully!${NC}"
echo -e "${BLUE}📁 Output files are in the '$OUTPUT_DIR' directory${NC}"

# Optional: Open PDF if on macOS
if [[ "$OSTYPE" == "darwin"* ]] && command -v open &> /dev/null; then
    read -p "Open PDF? (y/n): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        open "$OUTPUT_DIR/$RESUME_NAME.pdf"
    fi
fi
