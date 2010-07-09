# $OpenBSD: Makefile,v 1.3 2010/07/09 08:12:27 sthen Exp $

COMMENT =		blinkensisters - hunt for the lost pixels

V =			0.5.3
DISTNAME =		LostPixels-${V}-source-with-addons
PKGNAME =		lostpixels-${V}p1
HOMEPAGE =		http://www.blinkensisters.org

CATEGORIES =		games

# GPL v2 only
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=blinkensisters/}

RUN_DEPENDS =		::lang/lua
LIB_DEPENDS =		::devel/sdl-net			\
			::devel/sdl-image		\
			::devel/sdl-mixer		\
			::devel/sdl-ttf

WANTLIB +=		SDL SDL_image SDL_mixer SDL_net SDL_ttf X11 Xau
WANTLIB +=		Xdmcp Xext Xrandr Xrender c freetype m pthread stdc++

USE_X11 =		Yes
USE_GMAKE =		Yes
MODULES +=		devel/cmake
CONFIGURE_STYLE =	cmake
WRKDIST =		${WRKDIR}/blinkensisters/lostpixels/game/software/

NO_REGRESS =		Yes

pre-configure:
	${SUBST_CMD} ${WRKDIST}CMakeLists.txt
	@perl -pi -e 's,make,${MAKE_PROGRAM},g ; s,/usr/local,\$$\{PREFIX},g' \
	    ${WRKDIST}/../addons/Makefile
	@find ${WRKDIST}/../addons/ -name Makefile -exec \
	    perl -pi -e 's,bmfcompress,${WRKDIST}/bmfcompress,g' {} \;

post-build:
	cd ${WRKDIST}/../addons && ${MAKE_PROGRAM} all

post-install:
	mv ${PREFIX}/bin/LostPixels ${PREFIX}/bin/lostpixels
	cd ${WRKDIST}/../addons && ${MAKE_PROGRAM} install

.include <bsd.port.mk>
