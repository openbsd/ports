COMMENT =		ls alternative written in Rust

GH_ACCOUNT =		ogham
GH_PROJECT =		exa
GH_TAGNAME =		v0.10.1

CATEGORIES =		sysutils

# Unlicense/MIT
PERMIT_PACKAGE =	Yes

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

MODULES =		devel/cargo

.include "crates.inc"

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes
BUILD_DEPENDS +=	textproc/pandoc

LIB_DEPENDS +=		devel/libgit2/libgit2
WANTLIB +=		c c++abi m pthread git2

MODCARGO_FEATURES =	git

post-install:
	pandoc --standalone -f markdown -t man ${WRKSRC}/man/exa.1.md > ${PREFIX}/man/man1/exa.1
	pandoc --standalone -f markdown -t man ${WRKSRC}/man/exa_colors.5.md > ${PREFIX}/man/man5/exa_colors.5
	${INSTALL_DATA_DIR} ${PREFIX}/share/fish/completions/
	${INSTALL_DATA} ${WRKSRC}/completions/completions.fish ${PREFIX}/share/fish/completions/exa.fish
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions/
	${INSTALL_DATA} ${WRKSRC}/completions/completions.zsh ${PREFIX}/share/zsh/site-functions/_exa
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions/
	${INSTALL_DATA} ${WRKSRC}/completions/completions.bash ${PREFIX}/share/bash-completion/completions/exa

.include <bsd.port.mk>
