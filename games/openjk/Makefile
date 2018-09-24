# $OpenBSD: Makefile,v 1.6 2018/09/24 02:35:31 bcallah Exp $

# Does not build with ports-gcc (tested on armv7)
ONLY_FOR_ARCHS =	${CLANG_ARCHS}

# Avoid future EPOCH bumps.
COMMENT =	open source reimplementation of Jedi Academy game
DISTNAME =	openjk-0.0.0.20180917
CATEGORIES =	games x11

GH_ACCOUNT =	JACoders
GH_PROJECT =	OpenJK
GH_COMMIT =	cc4094c8fa989663eb8087b33d97bb2749295b9f

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
