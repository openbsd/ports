# $OpenBSD: Makefile,v 1.15 2019/07/12 20:46:28 sthen Exp $

COMMENT =	Zuma-like arcade game
DISTNAME =	zaz-1.0.0
REVISION =	7
CATEGORIES =	games

HOMEPAGE =	http://zaz.sourceforge.net/

MAINTAINER =	Matthias Kilian <kili@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =		Yes

WANTLIB += ${COMPILER_LIBCXX} GL SDL SDL_image c ftgl iconv intl
WANTLIB += m ogg theoradec theoraenc vorbis vorbisenc vorbisfile

COMPILER =		base-clang ports-gcc base-gcc

EXTRACT_SUFX =	.tar.bz2
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=zaz/}

LIB_DEPENDS =	audio/libvorbis \
		devel/gettext,-runtime \
		devel/sdl-image \
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
