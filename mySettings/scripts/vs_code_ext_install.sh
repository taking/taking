#!/bin/bash

extension_folder="/tmp/extensions"

if [ -d "$extension_folder" ]; then
  echo "Vs Code Extension Exists"
else
  mkdir -p /tmp/extensions
  curl -L "https://github.com/taking/coder-docker-templates/releases/download/v0.1/base-240711.tgz" | tar -C /tmp/extensions -xzvf -

  # Dev
  /tmp/code-server/bin/code-server --install-extension /tmp/extensions/formulahendry.auto-rename-tag-0.1.10.vsix
  /tmp/code-server/bin/code-server --install-extension /tmp/extensions/formulahendry.auto-close-tag-0.5.15.vsix
  /tmp/code-server/bin/code-server --install-extension /tmp/extensions/Arjun.swagger-viewer-3.1.2.vsix
  /tmp/code-server/bin/code-server --install-extension /tmp/extensions/mikestead.dotenv-1.0.1.vsix
  /tmp/code-server/bin/code-server --install-extension /tmp/extensions/2gua.rainbow-brackets-0.0.6.vsix
  /tmp/code-server/bin/code-server --install-extension /tmp/extensions/SimonSiefke.svg-preview-2.8.3.vsix  
  /tmp/code-server/bin/code-server --install-extension /tmp/extensions/kisstkondoros.vscode-gutter-preview-0.31.2.vsix
  /tmp/code-server/bin/code-server --install-extension /tmp/extensions/vincaslt.highlight-matching-tag-0.11.0.vsix
  /tmp/code-server/bin/code-server --install-extension /tmp/extensions/naumovs.color-highlight-2.8.0.vsix
  /tmp/code-server/bin/code-server --install-extension /tmp/extensions/ldez.ignore-files-0.1.0.vsix
  /tmp/code-server/bin/code-server --install-extension /tmp/extensions/codezombiech.gitignore-0.9.0.vsix
  /tmp/code-server/bin/code-server --install-extension /tmp/extensions/donjayamanne.githistory-0.6.20.vsix
  /tmp/code-server/bin/code-server --install-extension /tmp/extensions/mhutchie.git-graph-1.30.0.vsix
  /tmp/code-server/bin/code-server --install-extension /tmp/extensions/Gruntfuggly.todo-tree-0.0.226.vsix
  /tmp/code-server/bin/code-server --install-extension /tmp/extensions/eamodio.gitlens-2024.7.818.vsix
  /tmp/code-server/bin/code-server --install-extension /tmp/extensions/wayou.vscode-todo-highlight-1.0.5.vsix
  /tmp/code-server/bin/code-server --install-extension /tmp/extensions/oderwat.indent-rainbow-8.3.1.vsix
  /tmp/code-server/bin/code-server --install-extension /tmp/extensions/RoscoP.ActiveFileInStatusBar-1.0.3.vsix
  
  # Language
  /tmp/code-server/bin/code-server --install-extension /tmp/extensions/MS-CEINTL.vscode-language-pack-ko-1.91.2024070309.vsix
  
  # Theme & Icon
  /tmp/code-server/bin/code-server --install-extension /tmp/extensions/zhuangtongfa.Material-theme-3.17.2.vsix
  /tmp/code-server/bin/code-server --install-extension /tmp/extensions/vscode-icons-team.vscode-icons-12.8.0.vsix
  
  cat > $HOME/.local/share/code-server/User/settings.json << EOF
{
  "remote.SSH.defaultExtensions": [
    "formulahendry.auto-rename-tag",
    "formulahendry.auto-close-tag",
    "Arjun.swagger-viewer",
    "mikestead.dotenv",
    "2gua.rainbow-brackets",
    "SimonSiefke.svg-preview",
    "RoscoP.ActiveFileInStatusBar",
    "kisstkondoros.vscode-gutter-preview",
    "vincaslt.highlight-matching-tag",
    "naumovs.color-highlight",
    "caponetto.vscode-diff-viewer",
    "ldez.ignore-files",
    "codezombiech.gitignore",
    "donjayamanne.githistory",
    "mhutchie.git-graph",
    "Gruntfuggly.todo-tree",
    "eamodio.gitlens",
    "wayou.vscode-todo-highlight",
    "vscode-icons-team.vscode-icons",
    "zhuangtongfa.Material-theme",
    "oderwat.indent-rainbow",
    "MS-CEINTL.vscode-language-pack-ko"
  ],

  "editor.fontFamily": "Hack, D2Coding, Consolas, Menlo, Monaco, 'Courier New', monospace",
  "editor.fontSize": 14,
  "editor.tabSize": 2,
  "editor.wordWrap": "on",
  "editor.wrappingIndent": "indent",
  "editor.fontLigatures": true,
  "editor.rulers": [100, 120],
  "editor.cursorBlinking": "phase",
  "editor.guides.indentation": true,
  "editor.codeActionsOnSave": {},
  "editor.lineHeight": 26,
  "editor.suggestSelection": "first",
  "editor.renderLineHighlight": "gutter",
  "editor.suggest.showStatusBar": true,
  "files.eol": "\\n",
  "terminal.integrated.fontSize": 16,
  "terminal.integrated.fontWeightBold": "bold",
  "ActiveFileInStatusBar.enable": true,
  "ActiveFileInStatusBar.fullpath": true,
  "ActiveFileInStatusBar.revealFile": false,
  
  // Theme & Icon Start
  "workbench.iconTheme": "vscode-icons",
  "workbench.colorTheme": "One Dark Pro Darker",
  "workbench.statusBar.visible": true,
  "workbench.activityBar.visible": true,
  "vsicons.dontShowNewVersionMessage": true,
  // Theme & Icon Stop

  // "editor.formatOnSave": false,
  "security.workspace.trust.untrustedFiles": "open",

  // Gitlens Start
  "gitlens.changes.toggleMode": "file",
  "gitlens.defaultDateLocale": "ko-KR",
  "gitlens.defaultDateFormat": "YYYY-MM-DD H:MM:mm",
  "gitlens.codeLens.scopes": [
    "document",
    "containers"
  ],
  "gitlens.advanced.messages": {
      "suppressShowKeyBindingsNotice": true
  },
  // Gitlens End

  // auto-close-tag Start
  "auto-close-tag.SublimeText3Mode": true,
  "auto-close-tag.activationOnLanguage": [
      "html",
      "xml",
      "php",
      "css",        
      "javascript",
      "js",
      "vue"
  ],
  // auto-close-tag End

  // indentRainbow Start
  "indentRainbow.ignoreErrorLanguages" : [
    "markdown"
  ],
  // indentRainbow End

  // Gitmoji Start
  "gitmoji.additionalEmojis": [
    {
      "emoji": "🐛",
      "code": ":bug:",
      "description": "Fix a bug.",
      "description_ko_kr": "BUG 수정"
    },
    {
      "emoji": "🚑",
      "code": ":ambulance:",
      "description": "Critical hotfix.",
      "description_zh_cn": "크리티컬 긴급수정"
    }
  ],
  // Gitmoji End

  // Google Style Guide (Java) Start
  "java.format.settings.url": "https://raw.githubusercontent.com/google/styleguide/gh-pages/eclipse-java-google-style.xml",
  "java.format.settings.profile": "GoogleStyle"
  // Google Style Guide End
}
EOF

mkdir -p $HOME/.vscode-server/data/Machine/
touch $HOME/.vscode-server/data/Machine/settings.json
cat > $HOME/.vscode-server/data/Machine/settings.json << EOF
{
  "remote.SSH.defaultExtensions": [
    "formulahendry.auto-rename-tag",
    "formulahendry.auto-close-tag",
    "Arjun.swagger-viewer",
    "mikestead.dotenv",
    "2gua.rainbow-brackets",
    "SimonSiefke.svg-preview",
    "RoscoP.ActiveFileInStatusBar",
    "kisstkondoros.vscode-gutter-preview",
    "vincaslt.highlight-matching-tag",
    "naumovs.color-highlight",
    "caponetto.vscode-diff-viewer",
    "ldez.ignore-files",
    "codezombiech.gitignore",
    "donjayamanne.githistory",
    "mhutchie.git-graph",
    "Gruntfuggly.todo-tree",
    "eamodio.gitlens",
    "wayou.vscode-todo-highlight",
    "vscode-icons-team.vscode-icons",
    "zhuangtongfa.Material-theme",
    "oderwat.indent-rainbow",
    "MS-CEINTL.vscode-language-pack-ko"
  ],

  "editor.fontFamily": "Hack, D2Coding, Consolas, Menlo, Monaco, 'Courier New', monospace",
  "editor.fontSize": 14,
  "editor.tabSize": 2,
  "editor.wordWrap": "on",
  "editor.wrappingIndent": "indent",
  "editor.fontLigatures": true,
  "editor.rulers": [100, 120],
  "editor.cursorBlinking": "phase",
  "editor.guides.indentation": true,
  "editor.codeActionsOnSave": {},
  "editor.lineHeight": 26,
  "editor.suggestSelection": "first",
  "editor.renderLineHighlight": "gutter",
  "editor.suggest.showStatusBar": true,
  "files.eol": "\\n",
  "terminal.integrated.fontSize": 16,
  "terminal.integrated.fontWeightBold": "bold",
  "ActiveFileInStatusBar.enable": true,
  "ActiveFileInStatusBar.fullpath": true,
  "ActiveFileInStatusBar.revealFile": false,
  
  // Theme & Icon Start
  "workbench.iconTheme": "vscode-icons",
  "workbench.colorTheme": "One Dark Pro Darker",
  "workbench.statusBar.visible": true,
  "workbench.activityBar.visible": true,
  "vsicons.dontShowNewVersionMessage": true,
  // Theme & Icon Stop

  // "editor.formatOnSave": false,
  "security.workspace.trust.untrustedFiles": "open",

  // Gitlens Start
  "gitlens.changes.toggleMode": "file",
  "gitlens.defaultDateLocale": "ko-KR",
  "gitlens.defaultDateFormat": "YYYY-MM-DD H:MM:mm",
  "gitlens.codeLens.scopes": [
    "document",
    "containers"
  ],
  "gitlens.advanced.messages": {
      "suppressShowKeyBindingsNotice": true
  },
  // Gitlens End

  // auto-close-tag Start
  "auto-close-tag.SublimeText3Mode": true,
  "auto-close-tag.activationOnLanguage": [
      "html",
      "xml",
      "php",
      "css",        
      "javascript",
      "js",
      "vue"
  ],
  // auto-close-tag End

  // indentRainbow Start
  "indentRainbow.ignoreErrorLanguages" : [
    "markdown"
  ],
  // indentRainbow End

  // Gitmoji Start
  "gitmoji.additionalEmojis": [
    {
      "emoji": "🐛",
      "code": ":bug:",
      "description": "Fix a bug.",
      "description_ko_kr": "BUG 수정"
    },
    {
      "emoji": "🚑",
      "code": ":ambulance:",
      "description": "Critical hotfix.",
      "description_zh_cn": "크리티컬 긴급수정"
    }
  ],
  // Gitmoji End

  // Google Style Guide (Java) Start
  "java.format.settings.url": "https://raw.githubusercontent.com/google/styleguide/gh-pages/eclipse-java-google-style.xml",
  "java.format.settings.profile": "GoogleStyle"
  // Google Style Guide End
}
EOF
fi
