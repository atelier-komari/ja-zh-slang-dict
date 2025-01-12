FROM registry.gitlab.com/islandoftex/images/texlive:TL2024-2025-01-05-full
RUN <<EOF
    /usr/bin/whoami
    apt-get update
    apt-get install -y fonts-noto-cjk-extra
    apt-get clean
EOF
