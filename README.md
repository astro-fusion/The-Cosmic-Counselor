# The Cosmic Counselor

<!-- badges: start -->
[![Build Status](https://img.shields.io/badge/build-passing-brightgreen.svg)](https://github.com/astro-fusion/the-cosmic-counselor)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
<!-- badges: end -->

This repository contains the source files for **The Cosmic Counselor: A Guide to Ethical Spiritual Practice**, a comprehensive guide for astrologers, tarot readers, and other spiritual counselors.

The book is built using [Quarto](https://quarto.org/) and features an interactive learning format with main content, practice exercises, and knowledge checks for each chapter.

## About the Book

The Cosmic Counselor is a practical guide that bridges ancient wisdom with modern ethical practices. Whether you read birth charts, tarot cards, palms, or numbers, this book provides universal principles for responsible spiritual counseling.

**Target Audience:** Astrologers, tarot readers, numerologists, palmists, and other spiritual counselors worldwide.

**Key Topics:**
- Ethical guidelines for spiritual practice
- Basic psychology for spiritual counselors
- Building trust and active listening skills
- When and how to refer clients to mental health professionals
- Self-care and professional boundaries
- Cultural sensitivity in spiritual practice

## Repository Structure

```
the-cosmic-counselor/
├── _quarto.yml              # Quarto configuration
├── index.qmd                # Book homepage & overview
├── frontmatter/             # Pre-chapter content
│   ├── prologue.qmd         # Cosmic Prelude
│   ├── foreword.qmd         # Foreword by guest author
│   ├── gratitude.qmd        # Gratitude Constellation
│   └── preface.qmd          # Astral Insights
├── chapters/                # Main chapters (1-10)
│   ├── chapter-01/
│   │   ├── index.qmd        # Main chapter content
│   │   ├── practice.qmd     # Practice exercises & reflections
│   │   └── quiz.qmd         # Knowledge check & assessment
│   ├── chapter-02/          # Following same pattern
│   │   ├── index.qmd
│   │   ├── practice.qmd
│   │   └── quiz.qmd
│   └── ...                  # Chapters 3-10 (planned)
├── backmatter/              # Post-chapter content
│   ├── summary.qmd          # Book summary & key takeaways
│   └── references.qmd       # Bibliography & resources
├── styles/                  # Custom styling (planned)
│   ├── global.scss          # Global book styles
│   ├── chapter.scss         # Chapter content styles
│   ├── practice.scss        # Practice section styles
│   └── quiz.scss           # Quiz section styles
├── images/                  # Book diagrams and illustrations
│   ├── chapter-01/          # Chapter-specific images
│   ├── global/              # Shared images
│   └── covers/              # Cover art
├── data/                    # Example datasets (if any)
├── _book/                   # Generated book output (ignored by git)
├── .gitignore              # Git ignore patterns
└── README.md               # This file
```

## Chapter Structure

Each chapter follows a consistent three-part structure:

### 📖 Main Content (`index.qmd`)
- Core concepts and principles
- Real-world examples and case studies
- Theoretical foundation

### 🎯 Practice Exercises (`practice.qmd`)
- Hands-on activities and reflections
- Role-playing scenarios
- Self-assessment tools
- Journaling prompts

### ✅ Knowledge Check (`quiz.qmd`)
- Multiple choice questions
- Scenario-based assessments
- Critical thinking exercises
- Progress validation

## Building the Book

To build the book locally:

1. **Install Quarto**
   ```bash
   # macOS (with Homebrew)
   brew install quarto
   
   # Or download from https://quarto.org/docs/get-started/
   ```

2. **Clone this repository**
   ```bash
   git clone https://github.com/astro-fusion/the-cosmic-counselor.git
   cd the-cosmic-counselor
   ```

3. **Render the book**
   ```bash
   # Full book
   quarto render
   
   # Preview while developing
   quarto preview
   
   # Single chapter
   quarto preview chapters/chapter-01/index.qmd
   ```

The book will be generated in the `_book/` directory.

## Development Workflow

### Adding New Chapters
1. Create new chapter folder: `chapters/chapter-XX/`
2. Add three files: `index.qmd`, `practice.qmd`, `quiz.qmd`
3. Update `_quarto.yml` to include the new chapter
4. Add chapter-specific images to `images/chapter-XX/`

### Styling and Themes
- Global styles: Edit `styles/global.scss`
- Section-specific styles: Edit respective `.scss` files
- Chapter-specific styling: Add custom CSS in chapter folders

## Images and Diagrams

### Guidelines
- **Format**: Export as 300 dpi PNG files
- **Style**: Simple, culturally neutral graphics
- **Accessibility**: Include alt text for all images
- **Organization**: Store in appropriate chapter folders

### File Naming Convention
```
images/
├── chapter-01/
│   ├── ethics-framework.png
│   └── boundary-diagram.png
├── global/
│   ├── cosmic-logo.png
│   └── spiritual-symbols.png
```

## Contributing

We welcome contributions to improve this book! Here's how you can help:

### Ways to Contribute
- **Content**: Suggest improvements to existing chapters
- **Examples**: Share anonymized case studies (with proper consent)
- **Translations**: Help translate the book into other languages
- **Proofreading**: Help fix typos and improve clarity
- **Cultural Perspectives**: Add insights from different spiritual traditions
- **Practice Exercises**: Suggest new activities and assessments

### How to Contribute
1. Fork this repository
2. Create a feature branch (`git checkout -b feature/your-improvement`)
3. Make your changes
4. Test the build: `quarto render`
5. Submit a pull request with a clear description

### Guidelines
- Maintain the book's ethical focus
- Keep language simple and accessible
- Respect cultural sensitivity
- Include proper citations for any referenced material
- Follow the established chapter structure (main/practice/quiz)

## Cultural Sensitivity

This book aims to be inclusive of all spiritual traditions and cultural backgrounds. When contributing:
- Avoid favoritism toward any single spiritual practice
- Respect different cultural approaches to spiritual counseling
- Use inclusive language
- Consider global perspectives
- Acknowledge diverse spiritual frameworks

## Current Status

- ✅ Project structure established
- ✅ Chapter 1 drafted (Understanding Ethical Boundaries)
- 🔄 Frontmatter content in development
- 📋 Chapters 2-10 planned
- 📋 Custom styling system planned

## License

This work is licensed under [Creative Commons Attribution-ShareAlike 4.0](https://creativecommons.org/licenses/by-sa/4.0/).

You are free to:
- Share and adapt the material
- Use for commercial purposes

Under these conditions:
- Provide appropriate attribution
- Share adaptations under the same license

## Contact

**Author:** Bishal Ghimire  
**Email:** astrofusion369@gmail.com  
**Website:** [astro-fusion.com](https://astro-fusion.com)

For questions about the book content or suggestions for improvement, please [open an issue](https://github.com/astro-fusion/the-cosmic-counselor/issues).

## Acknowledgments

This book exists thanks to the wisdom shared by spiritual teachers, the trust of countless clients, and the support of family and friends. Special gratitude to all contributors who help make this resource better for the spiritual community.

## Code of Conduct

Please note that The Cosmic Counselor project follows a [Contributor Code of Conduct](CODE_OF_CONDUCT.md). By participating in this project, you agree to abide by its terms. We are committed to providing a welcoming and harassment-free experience for everyone, regardless of spiritual practice, cultural background, or experience level.
