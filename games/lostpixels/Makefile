# $OpenBSD: Makefile,v 1.2 2009/10/09 23:45:19 phessler Exp $

COMMENT =		blinkensisters - hunt for the lost pixels

V =			0.5.3
DISTNAME =		LostPixels-${V}-source-with-addons
PKGNAME =		lostpixels-${V}p0
HOMEPAGE =		http://www.blinkensisters.org

CATEGORIES =		games

# GPL v2 only
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=blinkensisters/}

RUN_DEPENDS =		::lang/lua
LIB_DEPENDS =		SDL_net::devel/sdl-net			\
			SDL_image::devel/sdl-image		\
			SDL_mixer::devel/sdl-mixer		\
			SDL_ttf::devel/sdl-ttf			\
			::audio/libvorbis

WANTLIB +=		SDL X11 Xau Xdmcp Xext Xrandr Xrender c freetype m
WANTLIB +=		pthread stdc++

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
