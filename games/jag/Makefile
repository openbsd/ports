# $OpenBSD: Makefile,v 1.10 2019/07/12 20:46:20 sthen Exp $ 
COMMENT =		arcade-puzzle game
V = 			0.3.2
DISTNAME =		jag-${V}
CATEGORIES =		games
HOMEPAGE =		http://jag.xlabsoft.com
REVISION =		2

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += GL ICE QtGui QtOpenGL QtXml SDL SDL_mixer SM X11 Xext
WANTLIB += Xi Xinerama Xrandr Xrender c fontconfig freetype m
WANTLIB += pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES = 		http://jag.xlabsoft.com/files/
DISTFILES = 		jag-${V}-src.zip jag-${V}-data.zip

MODULES =		devel/qmake x11/qt4
BUILD_DEPENDS = 	archivers/unzip
LIB_DEPENDS =		devel/sdl \
			devel/sdl-mixer
WRKDIST =		${WRKDIR}/jag-${V}-src

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/Game.pro ${WRKSRC}/main.cpp

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/jag
	cd ${WRKDIR}/jag-${V}-data/data && pax -rw . ${PREFIX}/share/jag
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/
	find ${PREFIX}/share -type d -exec chmod ${DIRMODE} {} \;
	find ${PREFIX}/share -type f -exec chmod ${SHAREMODE} {} \;

.include <bsd.port.mk>
