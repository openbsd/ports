# $OpenBSD: Makefile,v 1.9 2019/07/12 20:46:22 sthen Exp $

# Avoid future EPOCH bumps.
COMMENT =	open source reimplementation of Jedi Academy game
DISTNAME =	openjk-0.0.0.20190428
CATEGORIES =	games x11

GH_ACCOUNT =	JACoders
GH_PROJECT =	OpenJK
GH_COMMIT =	5f3389a3c8068cdfc716e386e5d3047a96e3ba82

HOMEPAGE =	https://openjk.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLU SDL2 c jpeg m png z

# C++11
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

LIB_DEPENDS =	devel/sdl2 \
		graphics/jpeg \
		graphics/png

NO_TEST =	Yes

# Upstream left a .orig file in the repo
post-extract:
	rm -f ${WRKSRC}/lib/SDL2/include/SDL_config_macosx.h.orig

pre-configure:
	sed -i "s,-O3,-I${X11BASE}/include,g" ${WRKSRC}/CMakeLists.txt

post-install:
	${SUBST_CMD} -c -m 555 ${FILESDIR}/jamp ${PREFIX}/bin/jamp
	${SUBST_CMD} -c -m 555 ${FILESDIR}/jasp ${PREFIX}/bin/jasp
	${SUBST_CMD} -c -m 555 ${FILESDIR}/openjkded ${PREFIX}/bin/openjkded

.include <bsd.port.mk>
