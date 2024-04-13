COMMENT =	minimalist and opinionated feed reader

V =		2.1.2

MODGO_MODNAME =	miniflux.app/v2
MODGO_VERSION =	v${V}

DISTNAME =	${MODGO_MODNAME}-${MODGO_VERSION}
PKGNAME =	miniflux-${V}

CATEGORIES =	net www

MAINTAINER =	Paco Esteban <paco@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go

ALL_TARGET =		${MODGO_MODNAME}/...

MODGO_LDFLAGS +=	-X miniflux.app/v2/internal/version.Version=${V}

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/miniflux.app \
		${PREFIX}/bin/miniflux
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/*.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/miniflux
	${INSTALL_DATA} ${FILESDIR}/miniflux.conf ${PREFIX}/share/examples/miniflux

.include "modules.inc"

.include <bsd.port.mk>
