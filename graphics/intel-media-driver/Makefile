ONLY_FOR_ARCHS =	amd64 i386
BROKEN-i386 =	ld: error: [...] is incompatible with /usr/lib/crtbeginS.o

COMMENT =	VAAPI driver for Intel HD 5000 (Gen8) or newer

VERSION =	24.2.5
GH_ACCOUNT =	intel
GH_PROJECT =	media-driver
GH_TAGNAME =	intel-media-${VERSION}

DISTNAME =	intel-media-driver-${VERSION}

CATEGORIES =	graphics multimedia

HOMEPAGE =	https://github.com/intel/media-driver/wiki

# MIT & BSD-3-Clause
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} drm execinfo igdgmm m

MODULES =	devel/cmake

COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	graphics/intel-gmmlib>=22.3.20

# XXX Unbundle googletest
CONFIGURE_ARGS =	-DMEDIA_RUN_TEST_SUITE=ON

CONFIGURE_ARGS +=	-DMEDIA_BUILD_FATAL_WARNINGS=OFF \
			-DBUILD_CMRTLIB=OFF

CONFIGURE_ARGS +=	-DLIBVA_DRIVERS_PATH="${LOCALBASE}/lib/dri"

# build dependency on libva
MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib
CXXFLAGS =		-I${X11BASE}/include

.include <bsd.port.mk>
