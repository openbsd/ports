# $OpenBSD: Makefile,v 1.2 2012/03/28 13:04:43 ajacoutot Exp $

COMMENT =	puzzle/platform game

DISTNAME =	meandmyshadow-0.3-src
CATEGORIES =	games
PKGNAME =	${DISTNAME:S/-src//}
REVISION =	0

HOMEPAGE =	http://meandmyshadow.sourceforge.net/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=meandmyshadow/}

# GPLv3 (some fonts/data CCY-BY-SA/OFL)
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WRKDIST =	${WRKDIR}/${DISTNAME:S/-src//}
MODULES =	devel/cmake
LIB_DEPENDS =	net/curl \
		devel/sdl-gfx \
		devel/sdl-mixer \
		devel/sdl-image \
		devel/sdl-mixer \
		devel/sdl-ttf \
		archivers/libarchive

WANTLIB += SDL SDL_gfx SDL_image SDL_mixer SDL_ttf archive c crypto
WANTLIB += curl m pthread ssl stdc++

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/meandmyshadow.desktop \
		${PREFIX}/share/applications
.for i in 16x16 32x32 48x48 64x64
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/${i}/apps
	${INSTALL_DATA} ${WRKSRC}/icons/${i}/meandmyshadow.png \
		${PREFIX}/share/icons/hicolor/${i}/apps/
.endfor

.include <bsd.port.mk>
