# babelquarto Setup Guide (Alternative Approach)

## What is babelquarto?

`babelquarto` is a Quarto extension that provides inline translation management within single files using translation keys.

## Installation

```bash
quarto add quarto-ext/babelquarto
```

## Configuration

### 1. Update _quarto.yml

```yaml
project:
  type: book
  output-dir: _book

# babelquarto configuration
filters:
  - babelquarto

babelquarto:
  default-lang: en
  languages:
    - en
    - hi
    - ne
  
  # Translation files
  translations:
    en: translations/en.json
    hi: translations/hi.json
    ne: translations/ne.json
```

### 2. Create Translation Files

**translations/en.json:**
```json
{
  "book-title": "The Cosmic Counselor",
  "book-subtitle": "Ethical Spiritual Guidance in Modern Times",
  "chapter-1-title": "Cosmic Calling",
  "chapter-1-intro": "Whether you read birth charts, tarot cards, tea leaves, or palm lines, you've been called to something special."
}
```

**translations/hi.json:**
```json
{
  "book-title": "द कॉस्मिक काउंसलर",
  "book-subtitle": "आधुनिक समय में नैतिक आध्यात्मिक मार्गदर्शन",
  "chapter-1-title": "कॉस्मिक कॉलिंग",
  "chapter-1-intro": "चाहे आप जन्म कुंडली, तारो कार्ड्स, चाय की पत्तियां, या हथेली की रेखाएं पढ़ते हों, आपको कुछ विशेष के लिए बुलाया गया है।"
}
```

**translations/ne.json:**
```json
{
  "book-title": "द कस्मिक काउन्सेलर",
  "book-subtitle": "आधुनिक समयमा नैतिक आध्यात्मिक मार्गदर्शन",
  "chapter-1-title": "कस्मिक कलिङ",
  "chapter-1-intro": "तपाईंले जन्मकुण्डली, तारो कार्डहरू, चिया पातहरू, वा हातको रेखाहरू पढ्नुहोस्, तपाईंलाई केही विशेषको लागि बोलाइएको छ।"
}
```

### 3. Use in Content Files

**chapters/chapter-01.qmd:**
```markdown
---
title: "{{< babel en >}}chapter-1-title{{< /babel >}}"
---

{{< babel en >}}chapter-1-intro{{< /babel >}}

## {{< babel en >}}chapter-1-section-1{{< /babel >}}

{{< babel en >}}chapter-1-content{{< /babel >}}
```

## Pros and Cons

### ✅ Pros of babelquarto
- **Single source files** - easier to maintain structure
- **Inline translation management** - see all languages together
- **Automatic language switching** - built-in functionality
- **Translation key system** - organized approach

### ❌ Cons of babelquarto
- **Complex setup** - requires translation files
- **Harder for translators** - need to work with keys, not natural text
- **Limited formatting control** - same formatting across languages
- **File size** - single files become large with multiple languages
- **Version control conflicts** - changes affect all languages

## Recommendation

For your **Cosmic Counselor** book, I recommend sticking with the **manual approach** I implemented because:

1. **Complete translations** work better with separate files
2. **Professional translators** prefer working with complete documents
3. **Better formatting control** for different scripts (Devanagari)
4. **Cleaner development workflow**
5. **Easier to manage** large content volumes

## Hybrid Approach

You could also use a **hybrid approach**:
- Use babelquarto for **navigation and metadata**
- Use manual files for **main content**

This gives you the best of both worlds! 