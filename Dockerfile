FROM registry.gitlab.com/islandoftex/images/texlive:TL2024-2025-01-05-full
RUN <<EOF
    cd /usr/local/share/fonts
    curl -fLo klee.ttf 'https://github.com/fontworks-fonts/Klee/raw/8b0532731b63ad8a445ca341d8d7d941079b83ab/fonts/ttf/KleeOne-Regular.ttf'
    curl -fLo lxgw.ttf 'https://github.com/lxgw/LxgwWenKai/releases/download/v1.501/LXGWWenKai-Light.ttf'
    curl -fLo notocjk.zip 'https://github.com/notofonts/noto-cjk/releases/download/Serif2.003/01_NotoSerifCJK.ttc.zip'
    unzip notocjk.zip
    rm notocjk.zip
    curl -fLo notocjk.zip 'https://github.com/notofonts/noto-cjk/releases/download/Sans2.004/00_NotoSansCJK.ttc.zip'
    unzip notocjk.zip
    rm notocjk.zip
    fc-cache -fv

    git config --global --add safe.directory /ws
EOF
