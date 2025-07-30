// Language Switcher Component for The Cosmic Counselor
// This script provides language switching functionality for the multilingual book

class LanguageSwitcher {
    constructor() {
        this.currentLang = this.detectCurrentLanguage();
        this.languages = {
            'en': {
                name: 'English',
                url: '/',
                flag: '🇺🇸'
            },
            'hi': {
                name: 'हिंदी',
                url: '/hi/',
                flag: '🇮🇳'
            },
            'ne': {
                name: 'नेपाली',
                url: '/ne/',
                flag: '🇳🇵'
            }
        };
        this.init();
    }

    detectCurrentLanguage() {
        const path = window.location.pathname;
        if (path.startsWith('/hi/')) return 'hi';
        if (path.startsWith('/ne/')) return 'ne';
        return 'en';
    }

    init() {
        this.createLanguageSwitcher();
        this.addEventListeners();
    }

    createLanguageSwitcher() {
        // Create language switcher container
        const switcher = document.createElement('div');
        switcher.className = 'language-switcher';
        switcher.innerHTML = `
            <div class="language-switcher-toggle">
                <span class="current-lang">
                    ${this.languages[this.currentLang].flag} ${this.languages[this.currentLang].name}
                </span>
                <span class="dropdown-arrow">▼</span>
            </div>
            <div class="language-dropdown">
                ${Object.entries(this.languages).map(([code, lang]) => `
                    <a href="${lang.url}" class="language-option ${code === this.currentLang ? 'active' : ''}">
                        <span class="lang-flag">${lang.flag}</span>
                        <span class="lang-name">${lang.name}</span>
                    </a>
                `).join('')}
            </div>
        `;

        // Insert into navbar
        const navbar = document.querySelector('.navbar-nav');
        if (navbar) {
            navbar.appendChild(switcher);
        } else {
            // Fallback: insert into body
            document.body.appendChild(switcher);
        }
    }

    addEventListeners() {
        const toggle = document.querySelector('.language-switcher-toggle');
        const dropdown = document.querySelector('.language-dropdown');

        if (toggle && dropdown) {
            toggle.addEventListener('click', (e) => {
                e.preventDefault();
                dropdown.classList.toggle('show');
            });

            // Close dropdown when clicking outside
            document.addEventListener('click', (e) => {
                if (!e.target.closest('.language-switcher')) {
                    dropdown.classList.remove('show');
                }
            });
        }
    }
}

// Initialize language switcher when DOM is loaded
document.addEventListener('DOMContentLoaded', () => {
    new LanguageSwitcher();
});

// Export for use in other scripts
if (typeof module !== 'undefined' && module.exports) {
    module.exports = LanguageSwitcher;
} 