# $OpenBSD: Makefile,v 1.4 2018/01/18 23:37:05 bcallah Exp $

COMMENT =	Settlers 1 (Serf City) clone
DISTNAME =	freeserf-0.1.1.20180117
CATEGORIES =	games x11

# Switch to GH_TAGNAME or a real tarball once 0.2 is released.
GH_ACCOUNT =	freeserf
GH_PROJECT =	freeserf
GH_COMMIT =	ef2484a00d23a728d19cd324d460fc21fac6a3c2

HOMEPAGE =	http://jonls.dk/freeserf/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_image SDL2_mixer c m xmp

# C++11
COMPILER =	base-clang ports-gcc ports-clang

MODULES =	devel/cmake

LIB_DEPENDS =	audio/libxmp \
		devel/sdl2-image \
		devel/sdl2-mixer

# Wants to download its own version of gtest at build time.
CONFIGURE_ARGS =	-DENABLE_TESTS:Bool=Off

NO_TEST =	Yes

.include <bsd.port.mk>
