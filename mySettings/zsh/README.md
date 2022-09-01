ARM 기반의 '애플 실리콘' 프로세서에선 다음과 같이 경로(/opt/homebrew)로 분류가 되므로, Oh-My-Zsh 를 사용하는 경우 .zshrc 에 export 해줘야한다.

```
    # On ARM macOS, this script installs to /opt/homebrew only
    HOMEBREW_PREFIX="/opt/homebrew"
    HOMEBREW_REPOSITORY="${HOMEBREW_PREFIX}"
```

`export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"`
