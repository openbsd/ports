# $OpenBSD: Makefile,v 1.7 2018/09/04 12:46:12 espie Exp $

COMMENT =	Settlers 1 (Serf City) clone
DISTNAME =	freeserf-0.1.1.20180302
CATEGORIES =	games x11
REVISION =	0

# Switch to GH_TAGNAME or a real tarball once 0.2 is released.
GH_ACCOUNT =	freeserf
GH_PROJECT =	freeserf
GH_COMMIT =	88f109c06af4fecfe38cfc817660a0c7a232bb60

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
