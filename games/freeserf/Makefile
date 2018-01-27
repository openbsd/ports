# $OpenBSD: Makefile,v 1.5 2018/01/27 04:42:03 bcallah Exp $

COMMENT =	Settlers 1 (Serf City) clone
DISTNAME =	freeserf-0.1.1.20180120
CATEGORIES =	games x11

# Switch to GH_TAGNAME or a real tarball once 0.2 is released.
GH_ACCOUNT =	freeserf
GH_PROJECT =	freeserf
GH_COMMIT =	2cf3717252da4e2eb0cfe8e3bcc71b05f26deca9

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
