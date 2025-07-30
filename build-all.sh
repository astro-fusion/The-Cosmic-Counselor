#!/bin/bash

# Build script for multilingual Cosmic Counselor book
# This script builds all language versions of the book

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
    local config_file=$3
    
    echo -e "${BLUE}📚 Building ${lang_name} version...${NC}"
    
    if [ -f "$config_file" ]; then
        quarto render --project "$config_file" --to html,pdf,epub
        echo -e "${GREEN}✅ ${lang_name} version built successfully!${NC}"
    else
        echo -e "${RED}❌ Configuration file not found: $config_file${NC}"
        return 1
    fi
}

# Build English version (main project)
echo -e "${YELLOW}🔤 Building English version...${NC}"
quarto render --to html,pdf,epub
echo -e "${GREEN}✅ English version built successfully!${NC}"

# Build Hindi version
build_language "hi" "Hindi" "translations/hi/_quarto.yml"

# Build Nepali version
build_language "ne" "Nepali" "translations/ne/_quarto.yml"

echo -e "${GREEN}🎉 All language versions built successfully!${NC}"
echo ""
echo -e "${YELLOW}📁 Output directories:${NC}"
echo "  - English: _book/"
echo "  - Hindi: _book/hi/"
echo "  - Nepali: _book/ne/"
echo ""
echo -e "${YELLOW}🌐 To serve locally:${NC}"
echo "  - English: quarto preview"
echo "  - Hindi: quarto preview --project translations/hi/_quarto.yml"
echo "  - Nepali: quarto preview --project translations/ne/_quarto.yml" 