# $OpenBSD: Makefile,v 1.2 2014/08/10 09:58:05 espie Exp $

V =			2.1.20130907
COMMENT =		port of the DOS shoot-em-up Tyrian
DISTNAME =		opentyrian-${V}-src
PKGNAME =		opentyrian-${V}
CATEGORIES =	games x11

HOMEPAGE =		http://code.google.com/p/opentyrian/

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
