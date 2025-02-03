COMMENT =	open-source reimplementation of Impulse Tracker

GH_ACCOUNT =	schismtracker
GH_PROJECT =	schismtracker
GH_TAGNAME =	20250202

CATEGORIES =	audio x11

HOMEPAGE =	https://schismtracker.org/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB +=	SDL2 c m utf8proc

MODULES =	lang/python

MODPY_RUNDEP =	No

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	devel/sdl2 \
		www/netsurf/libutf8proc

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

CONFIGURE_ARGS =	--enable-sdl2-linking \
			--with-sdl2 \
			--without-flac

CFLAGS +=		-I${LOCALBASE}/include/libutf8proc

USE_GMAKE =		Yes

.include <bsd.port.mk>
