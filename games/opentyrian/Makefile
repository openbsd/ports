# $OpenBSD: Makefile,v 1.3 2015/08/24 03:57:37 bentley Exp $

V =			2.1.20130907
COMMENT =		port of the DOS shoot-em-up Tyrian
DISTNAME =		opentyrian-${V}-src
PKGNAME =		opentyrian-${V}
REVISION =		0
CATEGORIES =		games x11

HOMEPAGE =		https://bitbucket.org/opentyrian/opentyrian/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.camanis.net/opentyrian/releases/

WANTLIB += SDL SDL_net c m pthread

RUN_DEPENDS =		archivers/unzip
LIB_DEPENDS =		devel/sdl-net

USE_GMAKE =		Yes
MAKE_FLAGS =		CC="${CC}" \
			MAKECMDGOALS=release

WRKDIST =		${WRKDIR}/opentyrian-${V}

do-install:
	${SUBST_PROGRAM} ${FILESDIR}/opentyrian ${PREFIX}/bin/opentyrian
	${INSTALL_DATA_DIR} ${PREFIX}/share/opentyrian
	${INSTALL_PROGRAM} ${WRKSRC}/opentyrian ${PREFIX}/share/opentyrian/opentyrian

.include <bsd.port.mk>
