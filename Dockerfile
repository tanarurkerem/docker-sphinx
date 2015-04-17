FROM codekoala/arch
MAINTAINER Josh VanderLinden <codekoala@gmail.com>

RUN pacman -Syu --needed --noconfirm \
    python2-sphinx \
    python2-sphinx_rtd_theme \
    python2-tox \
    sphinxcontrib2-programoutput \
    texlive-most \
    texlive-lang \
    make && \
    rm -rf /var/cache/pacman

ENTRYPOINT ["make"]
CMD ["html"]

# vim:ft=Dockerfile:
