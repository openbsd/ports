COMMENT =		clipboard history manager for Wayland

MODGO_MODNAME =		go.senan.xyz/cliphist
MODGO_VERSION =		v0.7.0
DISTNAME =		cliphist-${MODGO_VERSION}

CATEGORIES =		wayland

MAINTAINER =		Volker Schlecht <volker@openbsd.org>

# GPLv3-only
PERMIT_PACKAGE =	Yes

MODULES =		lang/go

RUN_DEPENDS =		wayland/wl-clipboard

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cliphist/
	${INSTALL_DATA} ${WRKSRC}/contrib/cliphist-* \
		${PREFIX}/share/examples/cliphist/

.include "modules.inc"
.include <bsd.port.mk>
