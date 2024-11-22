# VS Code Settings

## Settings

```json
{
  "editor.bracketPairColorization.enabled": true,
  "editor.codeActionsOnSave": {
    "source.fixAll.eslint": "explicit"
  },
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "editor.formatOnPaste": true,
  "editor.formatOnSave": true,
  "editor.guides.bracketPairs": true,
  "editor.guides.bracketPairsHorizontal": "active",
  "editor.guides.highlightActiveIndentation": true,
  "editor.inlineSuggest.suppressSuggestions": true,
  "editor.linkedEditing": true,
  "editor.minimap.enabled": false,
  "editor.tabSize": 2,
  "extensions.ignoreRecommendations": true,

  "files.autoSave": "onWindowChange",
  "files.trimTrailingWhitespace": true,

  "html.autoClosingTags": true,

  "javascript.autoClosingTags": true,
  "javascript.preferences.renameMatchingJsxTags": true,

  "prettier.printWidth": 120,
  "prettier.documentSelectors": ["**/*.astro"],
  "prettier.htmlWhitespaceSensitivity": "css",
  "prettier.ignorePath": "",
  "prettier.insertPragma": false,
  "prettier.jsxSingleQuote": true,
  "prettier.singleQuote": true,

  "search.exclude": {
    "**/node_modules": true
  },

  "typescript.autoClosingTags": true,
  "typescript.enablePromptUseWorkspaceTsdk": true,
  "typescript.preferences.renameMatchingJsxTags": true,
  "typescript.tsdk": "node_modules/typescript/lib",

  "workbench.colorCustomizations": {
    "[Panda Syntax]": {
      "editorBracketHighlight.foreground1": "#E6E6E6",
      "editorBracketHighlight.foreground2": "#FF75B5",
      "editorBracketHighlight.foreground3": "#19f9d8",
      "editorBracketHighlight.foreground4": "#B084EB",
      "editorBracketHighlight.foreground5": "#45A9F9",
      "editorBracketHighlight.foreground6": "#FFB86C",

      "editorBracketHighlight.unexpectedBracket.foreground": "#FF2C6D",
      "editorBracketPairGuide.background1": "#FFB86C",
      "editorBracketPairGuide.background2": "#FF75B5",
      "editorBracketPairGuide.background3": "#45A9F9",
      "editorBracketPairGuide.background4": "#B084EB",
      "editorBracketPairGuide.background5": "#E6E6E6",
      "editorBracketPairGuide.background6": "#19f9d8",

      "editorBracketPairGuide.activeBackground1": "#FFB86C",
      "editorBracketPairGuide.activeBackground2": "#FF75B5",
      "editorBracketPairGuide.activeBackground3": "#45A9F9",
      "editorBracketPairGuide.activeBackground4": "#B084EB",
      "editorBracketPairGuide.activeBackground5": "#E6E6E6",
      "editorBracketPairGuide.activeBackground6": "#19f9d8"
    }
  },
  "workbench.iconTheme": "vscode-icons",

  "[astro]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[css]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[handlebars]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[html]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[javascript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[javascriptreact]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[json]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[jsonc]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[markdown]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode",
    "files.trimTrailingWhitespace": false
  },
  "[scss]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[typescript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },

  "[typescriptreact]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
    //   "editor.defaultFormatter": "vscode.typescript-language-features"
  },
  "cSpell.userWords": [
    "astro",
    "astrojs",
    "clsx",
    "consts",
    "daisyui",
    "esbenp",
    "gardnermedia",
    "lucide",
    "reduxjs",
    "simplelightbox",
    "tailwindcss",
    "testid"
  ],
  "[xml]": {
    "editor.defaultFormatter": "redhat.vscode-xml"
  },
  "redhat.telemetry.enabled": false,
  "[php]": {
    "editor.defaultFormatter": "DEVSENSE.phptools-vscode"
  },
  "security.promptForLocalFileProtocolHandling": false,
  "cody.autocomplete.enabled": true,
  "php.stubs": ["*"]
}
```
