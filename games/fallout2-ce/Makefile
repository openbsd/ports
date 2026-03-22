COMMENT =	fallout 2 for modern operating systems

DIST_TUPLE +=	github alexbatalov fallout2-ce v1.3.0 .
DIST_TUPLE +=	github Loadmaster fpattern v1.9 third_party/fpattern

CATEGORIES =	games x11

MAINTAINER =	izzy Meyer <izder456@disroot.org>

# Sustainable Use License, fpattern: MIT
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc base-gcc

WANTLIB +=		${COMPILER_LIBCXX} SDL2 c m z

MODULES =		devel/cmake

LIB_DEPENDS =		devel/sdl2

CONFIGURE_ARGS =	-Dfpattern_SOURCE_DIR=${WRKSRC}/third_party/fpattern

DEBUG_PACKAGES =	${BUILD_PACKAGES}

post-extract:
	rm -fr ${WRKDIST}/third_party/fpattern

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/fallout2-ce ${PREFIX}/bin

.include <bsd.port.mk>
