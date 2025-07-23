# Rageswari Subudhi - Professional Resume

A modern, responsive resume website with multiple format support for Rageswari Subudhi, Agricultural Engineering Expert specializing in Soil & Water Conservation, Hydraulic Modeling, and Flood Management.

## 🌟 Features

- **Responsive Web Design**: Modern, mobile-friendly resume website
- **Multiple Formats**: HTML, PDF (LaTeX), and plain text versions
- **Professional Styling**: Clean, modern design with smooth animations
- **Print-Optimized**: Optimized CSS for high-quality printing
- **Accessibility**: WCAG compliant with keyboard navigation support
- **SEO Optimized**: Meta tags and structured data for better search visibility

## 📁 Project Structure

```
ResumeRS/
├── src/                          # Source files
│   ├── index.html               # Main resume webpage
│   ├── styles/
│   │   └── main.css            # Stylesheet
│   ├── scripts/
│   │   └── main.js             # JavaScript functionality
│   └── latex/
│       ├── rageswari_resume.tex # LaTeX source
│       └── deedy-resume-openfont.cls # LaTeX class file
├── scripts/
│   └── compile_resume.sh       # LaTeX compilation script
├── dist/                       # Generated output files
├── assets/                     # Static assets (fonts, images)
│   └── fonts/                  # Custom fonts
├── docs/                       # Documentation
└── README.md                   # This file
```

## 🚀 Quick Start

### View Online Resume

1. Clone this repository:
   ```bash
   git clone <repository-url>
   cd ResumeRS
   ```

2. Open `src/index.html` in your web browser to view the resume

### Generate PDF Version

1. Install LaTeX distribution with XeLaTeX support:
   - **macOS**: `brew install --cask mactex`
   - **Windows**: Install MiKTeX from https://miktex.org/
   - **Linux**: `sudo apt-get install texlive-full`

2. Run the compilation script:
   ```bash
   ./scripts/compile_resume.sh
   ```

3. Generated files will be in the `dist/` directory

## 🛠️ Development

### Prerequisites

- Modern web browser
- LaTeX distribution (for PDF generation)
- Text editor or IDE

### Local Development

1. Make changes to source files in the `src/` directory
2. Open `src/index.html` in your browser to preview changes
3. For LaTeX changes, edit `src/latex/rageswari_resume.tex` and run the compilation script

### File Organization

- **HTML/CSS/JS**: All web-related files are in `src/`
- **LaTeX**: LaTeX source and class files in `src/latex/`
- **Scripts**: Build and utility scripts in `scripts/`
- **Output**: Generated files go to `dist/`

## 📋 Available Formats

### 1. Web Version (`src/index.html`)
- Responsive design that works on all devices
- Interactive elements and smooth animations
- Print-optimized CSS for high-quality printing
- SEO optimized with proper meta tags

### 2. PDF Version (LaTeX)
- Professional LaTeX formatting using Deedy Resume template
- Compiled using XeLaTeX for better font support
- Optimized for ATS (Applicant Tracking Systems)

### 3. Plain Text Version
- Automatically generated from PDF
- ATS-friendly format
- Easy to copy-paste into forms

## 🎨 Customization

### Updating Content

1. **Web Version**: Edit `src/index.html`
2. **LaTeX Version**: Edit `src/latex/rageswari_resume.tex`
3. **Styling**: Modify `src/styles/main.css`
4. **Functionality**: Update `src/scripts/main.js`

### Color Scheme

The CSS uses CSS custom properties (variables) for easy theming:

```css
:root {
    --primary-color: #2563eb;
    --secondary-color: #1e40af;
    --accent-color: #f59e0b;
    --success-color: #10b981;
    /* ... more variables */
}
```

### Fonts

- **Primary**: Inter (modern, readable sans-serif)
- **Headers**: Playfair Display (elegant serif)
- **Icons**: Font Awesome 6

## 🔧 Build Scripts

### Compile LaTeX to PDF

```bash
./scripts/compile_resume.sh
```

This script:
- Compiles LaTeX source to PDF using XeLaTeX
- Generates plain text version from PDF
- Cleans up temporary files
- Provides colored output and error handling

## 📱 Responsive Design

The resume is fully responsive with breakpoints for:
- **Desktop**: > 1024px
- **Tablet**: 768px - 1024px
- **Mobile**: < 768px
- **Small Mobile**: < 480px

## ♿ Accessibility Features

- Semantic HTML structure
- ARIA labels where appropriate
- Keyboard navigation support
- High contrast color scheme
- Screen reader friendly
- Focus indicators for interactive elements

## 🖨️ Print Optimization

Special print styles ensure:
- Proper page breaks
- Optimized colors for printing
- Appropriate font sizes
- Clean layout without web-specific elements

## 📈 SEO Optimization

- Structured meta tags
- Open Graph tags for social sharing
- Semantic HTML markup
- Descriptive alt texts
- Proper heading hierarchy

## 🔄 Version Control

This repository follows a clean structure:
- Source files are version controlled
- Generated files (`dist/`) can be ignored or included as needed
- Clear separation between source and output

## 📄 License

This resume template is based on the Deedy-Resume template, available under the Apache License 2.0.

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📞 Contact

**Rageswari Subudhi**
- Email: subudhi141096@gmail.com
- Phone: +91-9078135156
- LinkedIn: [rageswari-subudhi](https://www.linkedin.com/in/rageswari-subudhi-250812179/)
- ResearchGate: [Rageswari Subudhi](https://www.researchgate.net/scientific-contributions/2135966431_Rageswari_Subudhi)

## 📝 Changelog

### v2.0.0 (Current)
- ✨ Complete repository reorganization
- ✨ Modern responsive web design
- ✨ Separated CSS and JavaScript files
- ✨ Improved build scripts
- ✨ Better documentation
- ✨ Accessibility improvements
- ✨ SEO optimization

### v1.0.0 (Previous)
- Basic HTML resume
- LaTeX PDF generation
- Simple file structure

---

*Last Updated: July 2025*
