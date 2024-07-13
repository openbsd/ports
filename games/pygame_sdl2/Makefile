BROKEN =	needs update for cython 3.x - current upstream version works with py 3.x

# Keep in sync with games/renpy!!!
V =		7.3.5.606
COMMENT =	Ren'Py fork of pygame
PKGNAME =	pygame_sdl2-${V}
CATEGORIES =	games x11
REVISION =	0

GH_ACCOUNT =	renpy
GH_PROJECT =	pygame_sdl2
GH_TAGNAME =	renpy-${V}

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# LGPLv2.1+ & zlib
PERMIT_PACKAGE =	Yes

# Not yet. We need to wait for Ren'Py to make the switch.
#FLAVORS =	python3
#FLAVOR ?=

# N.B. there's no py- prefix for this port; suggest normalising by using
# PKGNAME=py-pygame_sdl2-${V} when switching to python 3, the python module
# will take care of changing this to py3-pygame_sdl2. The move will need
# a "quirks rename" (pygame_sdl2 -> py3-pygame_sdl2) and @pkgpath marker. -sthen

WANTLIB += SDL2 SDL2_image SDL2_mixer SDL2_ttf jpeg png pthread
WANTLIB += ${MODPY_WANTLIB}

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =	lang/cython,python3

LIB_DEPENDS =	devel/sdl2-image \
		devel/sdl2-mixer \
		devel/sdl2-ttf

NO_TEST =	Yes

.include <bsd.port.mk>
