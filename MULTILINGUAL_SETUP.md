# Multilingual Setup Guide for The Cosmic Counselor

This guide explains how to maintain and manage multiple language versions of your Quarto ebook.

## 🌍 Supported Languages

- **English (en)** - Original language
- **Hindi (hi)** - हिंदी
- **Nepali (ne)** - नेपाली

## 📁 Project Structure

```
The Cosmic Counselor/
├── _quarto.yml                    # Main English configuration
├── build-all.sh                   # Build script for all languages
├── translations/
│   ├── hi/                        # Hindi translations
│   │   ├── _quarto.yml           # Hindi-specific config
│   │   ├── index.qmd             # Hindi homepage
│   │   ├── chapters/             # Hindi chapter files
│   │   ├── frontmatter/          # Hindi frontmatter
│   │   └── backmatter/           # Hindi backmatter
│   └── ne/                        # Nepali translations
│       ├── _quarto.yml           # Nepali-specific config
│       ├── index.qmd             # Nepali homepage
│       ├── chapters/             # Nepali chapter files
│       ├── frontmatter/          # Nepali frontmatter
│       └── backmatter/           # Nepali backmatter
├── scripts/
│   └── language-switcher.js      # Language switching component
├── styles/
│   └── global.css                # Styles including language switcher
└── images/                       # Shared images across languages
```

## 🚀 Quick Start

### 1. Build All Languages
```bash
./build-all.sh
```

### 2. Preview Individual Languages
```bash
# English (default)
quarto preview

# Hindi
quarto preview --project translations/hi/_quarto.yml

# Nepali
quarto preview --project translations/ne/_quarto.yml
```

### 3. Build Specific Language
```bash
# Build only Hindi
quarto render --project translations/hi/_quarto.yml --to html,pdf,epub

# Build only Nepali
quarto render --project translations/ne/_quarto.yml --to html,pdf,epub
```

## 📝 Translation Workflow

### Best Practices

1. **Maintain Parallel Structure**: Keep the same file structure across all languages
2. **Use Consistent Naming**: Use the same filenames with translated content
3. **Shared Resources**: Keep images, scripts, and styles shared
4. **Language-Specific Metadata**: Update titles, descriptions, and navigation for each language

### Translation Process

1. **Create Language Directory**: Copy the structure from the main project
2. **Update Configuration**: Modify `_quarto.yml` for language-specific settings
3. **Translate Content**: Translate all `.qmd` files while maintaining formatting
4. **Update Navigation**: Translate part titles and navigation elements
5. **Test Build**: Ensure the translated version builds correctly

### File Translation Checklist

For each chapter, translate:
- [ ] Main chapter file (e.g., `chapter-01.qmd`)
- [ ] Chapter content (`chapter-01/index.qmd`)
- [ ] Practice exercises (`chapter-01/practice.qmd`)
- [ ] Quiz questions (`chapter-01/quiz.qmd`)

For frontmatter/backmatter:
- [ ] Prologue
- [ ] Foreword
- [ ] Gratitude
- [ ] Preface
- [ ] References
- [ ] Author bio
- [ ] Summary

## 🔧 Configuration Details

### Language-Specific Settings

Each language has its own `_quarto.yml` with:

```yaml
# Language identifier
lang: hi  # or 'ne' for Nepali

# Language-specific metadata
book:
  title: "द कॉस्मिक काउंसलर"  # Translated title
  subtitle: "आधुनिक समय में नैतिक आध्यात्मिक मार्गदर्शन"
  author: "बिशाल घिमिरे"

# Language-specific output
project:
  output-dir: _book/hi  # Separate output directory

# Language-specific formatting
format:
  html:
    lang: hi  # HTML lang attribute
  pdf:
    include-in-header:
      - text: |
          \usepackage{polyglossia}
          \setdefaultlanguage{hindi}
```

### Font Support

For proper rendering of Devanagari scripts:

**HTML**: Uses system fonts with fallbacks
**PDF**: Uses polyglossia package for LaTeX
**EPUB**: Uses embedded fonts

## 🌐 Website Integration

### Language Switcher

The website includes a language switcher component that:
- Detects current language from URL
- Provides dropdown menu for language selection
- Maintains navigation context when switching
- Is responsive for mobile devices

### URL Structure

```
/                    # English version
/hi/                 # Hindi version
/ne/                 # Nepali version
```

### GitHub Pages Configuration

Each language has its own GitHub Pages configuration:
- English: `https://astro-fusion.github.io/The-Cosmic-Counselor`
- Hindi: `https://astro-fusion.github.io/The-Cosmic-Counselor/hi`
- Nepali: `https://astro-fusion.github.io/The-Cosmic-Counselor/ne`

## 📊 Content Management

### Translation Status Tracking

Use this template to track translation progress:

| Chapter | English | Hindi | Nepali | Status |
|---------|---------|-------|--------|--------|
| Chapter 1 | ✅ | ✅ | ⏳ | In Progress |
| Chapter 2 | ✅ | ⏳ | ⏳ | Not Started |
| ... | ... | ... | ... | ... |

### Quality Assurance

1. **Consistency Check**: Ensure terminology is consistent across languages
2. **Formatting Check**: Verify all Quarto formatting is preserved
3. **Link Check**: Ensure internal links work in all languages
4. **Build Test**: Test all output formats (HTML, PDF, EPUB)

## 🔄 Maintenance

### Adding New Content

1. Add content to English version first
2. Create corresponding files in language directories
3. Translate content while maintaining structure
4. Update build script if needed
5. Test all language versions

### Updating Existing Content

1. Update English version
2. Update corresponding translations
3. Maintain consistency across languages
4. Rebuild all versions

### Adding New Languages

1. Create new language directory (`translations/[lang-code]/`)
2. Copy structure from existing language
3. Update `_quarto.yml` with new language settings
4. Add language to build script
5. Update language switcher component
6. Add language-specific CSS if needed

## 🛠️ Troubleshooting

### Common Issues

**Build Errors**: Check for missing files or syntax errors in translated content
**Font Issues**: Ensure proper font support for the target language
**Navigation Problems**: Verify all internal links are updated for the language
**Layout Issues**: Check CSS compatibility with different scripts

### Debug Commands

```bash
# Check for missing files
find translations/ -name "*.qmd" -exec echo "Checking {}" \; -exec test -f {} \; -o echo "Missing: {}"

# Validate Quarto configuration
quarto check --project translations/hi/_quarto.yml

# Preview with verbose output
quarto preview --project translations/hi/_quarto.yml --log-level debug
```

## 📚 Resources

- [Quarto Multilingual Documentation](https://quarto.org/docs/books/multilingual.html)
- [Polyglossia Package Documentation](https://ctan.org/pkg/polyglossia)
- [Unicode Support for Indic Scripts](https://unicode.org/faq/indic.html)

## 🤝 Contributing

When contributing translations:

1. Follow the existing file structure
2. Maintain consistent terminology
3. Test your changes with the build script
4. Update this documentation if needed
5. Ensure proper attribution for translators

---

**Note**: This setup provides a scalable foundation for multilingual content. The modular approach allows easy addition of new languages while maintaining consistency and quality across all versions. 