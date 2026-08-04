#!/bin/bash

# Build script for multilingual Cosmic Counselor book
# This script builds all language versions of the book (Full E-Book/Large Print & Main-Content-Only Print)

set -e  # Exit on any error

echo "🌍 Building The Cosmic Counselor in all languages..."

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to build a language version
build_language() {
    local lang=$1
    local lang_name=$2
    local lang_dir=$3
    
    echo -e "${BLUE}📚 Building ${lang_name} full version...${NC}"
    
    if [ -d "$lang_dir" ]; then
        (cd "$lang_dir" && quarto render --to html)
        echo -e "${GREEN}✅ ${lang_name} version built successfully!${NC}"
    else
        echo -e "${RED}❌ Directory not found: $lang_dir${NC}"
        return 1
    fi
}

# Build English version (main project)
echo -e "${YELLOW}🔤 Building English full version...${NC}"
rm -rf _book
mkdir -p _book
quarto render --to html
echo -e "${GREEN}✅ English full version built successfully!${NC}"

# Build English main-content-only version (Compact/Print)
echo -e "${YELLOW}🔤 Building English (Main Content Only) version...${NC}"
rm -rf _book-mainonly
mkdir -p _book-mainonly
quarto render --profile mainonly --to html
echo -e "${GREEN}✅ English main-content-only version built successfully!${NC}"

# Build Hindi version
build_language "hi" "Hindi" "translations/hi"

# Build Nepali version
build_language "ne" "Nepali" "translations/ne"

echo -e "${GREEN}🎉 All language versions & target profiles built successfully!${NC}"
echo ""
echo -e "${YELLOW}📁 Output directories:${NC}"
echo "  - Full English: _book/"
echo "  - Main Content Only English: _book-mainonly/"
echo "  - Hindi: _book/hi/"
echo "  - Nepali: _book/ne/"
echo ""
echo -e "${YELLOW}🌐 To serve locally:${NC}"
echo "  - Full English: quarto preview"
echo "  - Main Content Only: quarto preview --profile mainonly"
echo "  - Hindi: cd translations/hi && quarto preview"
echo "  - Nepali: cd translations/ne && quarto preview"
