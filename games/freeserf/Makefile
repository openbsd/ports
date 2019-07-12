# $OpenBSD: Makefile,v 1.13 2019/07/12 20:46:18 sthen Exp $

COMMENT =	Settlers 1 (Serf City) clone
CATEGORIES =	games x11

# Switch to GH_TAGNAME or a real tarball once 0.3 is released.
GH_ACCOUNT =	freeserf
GH_PROJECT =	freeserf
GH_TAGNAME =	v0.3

HOMEPAGE =	http://jonls.dk/freeserf/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_image SDL2_mixer c m xmp

# C++11
COMPILER =	base-clang ports-gcc base-gcc

MODULES =	devel/cmake

LIB_DEPENDS =	audio/libxmp \
		devel/sdl2-image \
		devel/sdl2-mixer

# Wants to download its own version of gtest at build time.
CONFIGURE_ARGS =	-DENABLE_TESTS:Bool=Off

NO_TEST =	Yes

.include <bsd.port.mk>
