# $OpenBSD: Makefile,v 1.2 2021/02/19 22:27:33 sthen Exp $

# Keep in sync with games/renpy!!!
V =		7.3.5.606
COMMENT =	Ren'Py fork of pygame
PKGNAME =	pygame_sdl2-${V}
CATEGORIES =	games x11

GH_ACCOUNT =	renpy
GH_PROJECT =	pygame_sdl2
GH_TAGNAME =	renpy-${V}

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# LGPLv2.1+ & zlib
PERMIT_PACKAGE =	Yes

# Not yet. We need to wait for Ren'Py to make the switch.
#FLAVORS =	python3
#FLAVOR ?=

WANTLIB += SDL2 SDL2_image SDL2_mixer SDL2_ttf jpeg png pthread
WANTLIB += ${MODPY_WANTLIB}

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =	lang/cython

LIB_DEPENDS =	devel/sdl2-image \
		devel/sdl2-mixer \
		devel/sdl2-ttf

NO_TEST =	Yes

post-extract:
	ln -s ${LOCALBASE}/bin/cython${MODPY_BIN_SUFFIX} ${WRKDIR}/bin/cython

.include <bsd.port.mk>
