ONLY_FOR_ARCHS =	amd64 i386

COMMENT =	VAAPI driver for Intel HD 5000 (Gen8) or newer

VERSION =	24.1.5
GH_ACCOUNT =	intel
GH_PROJECT =	media-driver
GH_TAGNAME =	intel-media-${VERSION}
REVISION =	0

DISTNAME =	intel-media-driver-${VERSION}

CATEGORIES =	graphics multimedia

# MIT & BSD-3-Clause
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} drm execinfo igdgmm m

MODULES =	devel/cmake

COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	graphics/intel-gmmlib

# XXX Unbundle googletest
CONFIGURE_ARGS =	-DMEDIA_RUN_TEST_SUITE=ON

CONFIGURE_ARGS +=	-DMEDIA_BUILD_FATAL_WARNINGS=OFF \
			-DBUILD_CMRTLIB=OFF

CONFIGURE_ARGS +=	-DLIBVA_DRIVERS_PATH="${LOCALBASE}/lib/xorg/modules"

# build dependency on libva
MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib
CXXFLAGS =		-I${X11BASE}/include

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/xorg/modules


.include <bsd.port.mk>
