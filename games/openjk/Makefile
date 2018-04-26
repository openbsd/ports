# $OpenBSD: Makefile,v 1.3 2018/04/26 02:15:18 bcallah Exp $

# Does not build with ports-gcc (tested on armv7)
ONLY_FOR_ARCHS =	${CLANG_ARCHS}

# Avoid future EPOCH bumps.
COMMENT =	open source reimplementation of Jedi Academy game
DISTNAME =	openjk-0.0.0.20180414
CATEGORIES =	games x11

GH_ACCOUNT =	JACoders
GH_PROJECT =	OpenJK
GH_COMMIT =	698fe7c0e150b3f38e0d5d229faf36ad7948afca

HOMEPAGE =	https://openjk.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLU SDL2 c jpeg m png z

# clang only
COMPILER =	base-clang ports-clang

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
