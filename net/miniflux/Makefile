COMMENT =	minimalist and opinionated feed reader

MODGO_MODNAME =	miniflux.app
MODGO_VERSION =	v0.0.0-20220813191517-1ca35e9364b1

DISTNAME =	miniflux.app-${MODGO_VERSION}
V =		2.0.38.20220813
PKGNAME =	miniflux-${V}
REVISION =	0

CATEGORIES =	net www

MAINTAINER =	Paco Esteban <paco@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go

ALL_TARGET =		${MODGO_MODNAME}/...

MODGO_LDFLAGS +=	-X miniflux.app/version.Version=${V}

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
