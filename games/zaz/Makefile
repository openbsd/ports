# $OpenBSD: Makefile,v 1.8 2017/07/26 22:45:22 sthen Exp $

COMMENT =	zuma-like arkade game
DISTNAME =	zaz-1.0.0
REVISION =	1
CATEGORIES =	games

HOMEPAGE =	http://zaz.sourceforge.net/

MAINTAINER =	Matthias Kilian <kili@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =	GL SDL SDL_image c freetype ftgl m ogg pthread ${COMPILER_LIBCXX} \
		theoradec theoraenc vorbis vorbisenc vorbisfile z

EXTRACT_SUFX =	.tar.bz2
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=zaz/}

MODULES =	devel/gettext

LIB_DEPENDS =	audio/libvorbis \
		devel/sdl-image \
		devel/sdl-mixer \
		devel/sdl-net \
		devel/sdl-ttf \
		graphics/ftgl \
		multimedia/libtheora

RUN_DEPENDS =	devel/desktop-file-utils

AUTOCONF_VERSION =	2.65
CONFIGURE_STYLE =	autoconf
CONFIGURE_ENV =		CFLAGS="$(CFLAGS) -I${X11BASE}/include \
				-I$(X11BASE)/include/freetype2 -pthread" \
			CXXFLAGS="$(CXXFLAGS) -I${X11BASE}/include \
				-I$(X11BASE)/include/freetype2 -pthread" \
			LDFLAGS="-pthread -L${X11BASE}/lib -L${LOCALBASE}/lib"

.include <bsd.port.mk>
