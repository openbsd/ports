COMMENT =	pretty ls alternative with support for icons and colors

GH_ACCOUNT =	lsd-rs
GH_PROJECT =	lsd
GH_TAGNAME =	v1.0.0
REVISION =	0

CATEGORIES =	sysutils

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# Apache-2.0
PERMIT_PACKAGE =	Yes

COMPILER =	base-clang ports-gcc
WANTLIB +=	${MODCARGO_WANTLIB} git2 m

MODULES =	devel/cargo

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

BUILD_DEPENDS =		textproc/lowdown

LIB_DEPENDS =		devel/libgit2/libgit2

# Build Shell completion scripts
MAKE_ENV +=	SHELL_COMPLETIONS_DIR="./completions"

post-install:
	sed '1,8d' ${WRKSRC}/doc/lsd.md > ${WRKBUILD}/lsd.md
	lowdown -s -tman -m section=1 -mtitle=lsd -mvolume='' \
		${WRKBUILD}/lsd.md > ${PREFIX}/man/man1/lsd.1

	${INSTALL_DATA_DIR} ${PREFIX}/share/fish/completions/
	${INSTALL_DATA} ${WRKSRC}/completions/lsd.fish \
		${PREFIX}/share/fish/completions/
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions/
	${INSTALL_DATA} ${WRKSRC}/completions/_lsd \
		${PREFIX}/share/zsh/site-functions/
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions/
	${INSTALL_DATA} ${WRKSRC}/completions/lsd.bash \
		${PREFIX}/share/bash-completion/completions/lsd

.include "crates.inc"

.include <bsd.port.mk>
