COMMENT =	music streaming server / subsonic server API implementation

MODGO_MODNAME =	go.senan.xyz/gonic
MODGO_VERSION =	v0.16.4

DISTNAME =	gonic-${MODGO_VERSION}

CATEGORIES =	audio

HOMEPAGE =	https://github.com/sentriz/gonic

MAINTAINER =	Russ Sharek <bsdclown@disroot.org>

# GPL3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} z c m tag

LIB_DEPENDS =	audio/taglib

MODULES =		lang/go

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gonic
		${SUBST_DATA} ${FILESDIR}/gonic.toml \
			${PREFIX}/share/examples/gonic/gonic.toml

.include "modules.inc"

.include <bsd.port.mk>
