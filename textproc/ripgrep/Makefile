# $OpenBSD: Makefile,v 1.21 2022/03/03 14:33:54 sthen Exp $

COMMENT =		line oriented search tool using Rust's regex library #'

GH_ACCOUNT =		BurntSushi
GH_PROJECT =		ripgrep
GH_TAGNAME =		13.0.0
REVISION =		0

CATEGORIES =		textproc sysutils

# Unlicense/MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		c c++abi pthread

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

MODULES =		devel/cargo
BUILD_DEPENDS =		textproc/asciidoctor

CONFIGURE_STYLE =	cargo

PATCHORIG =		.openbsd.orig
SEPARATE_BUILD =	Yes

MODCARGO_RUSTFLAGS =	-C debuginfo=0

RELEASE_DIR =		${MODCARGO_TARGET_DIR}/release
OUT_DIR =		${RELEASE_DIR}/build/ripgrep-*/out

# fish completion excluded as it is shipped with shells/fish
do-install:
	${INSTALL_PROGRAM} ${RELEASE_DIR}/rg ${PREFIX}/bin/
	${INSTALL_MAN} ${OUT_DIR}/rg.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions \
	    ${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${OUT_DIR}/rg.bash \
	    ${PREFIX}/share/bash-completion/completions/rg
	${INSTALL_DATA} ${WRKSRC}/complete/_rg \
	    ${PREFIX}/share/zsh/site-functions/_rg

.include "crates.inc"

.include <bsd.port.mk>
