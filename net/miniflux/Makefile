COMMENT =	minimalist and opinionated feed reader

MODGO_MODNAME =	miniflux.app
MODGO_VERSION =	v0.0.0-20211217010050-686dd92cb9e4

DISTNAME =	miniflux.app-${MODGO_VERSION}
PKGNAME =	miniflux-2.0.34.20211217

CATEGORIES =	net www

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go

ALL_TARGET =		${MODGO_MODNAME}/...

SUBST_VARS =		VARBASE \
			SYSCONFDIR

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/miniflux.app \
		${PREFIX}/bin/miniflux
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/*.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/miniflux
	${INSTALL_DATA} ${FILESDIR}/miniflux.conf ${PREFIX}/share/examples/miniflux

.include "modules.inc"

.include <bsd.port.mk>
