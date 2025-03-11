COMMENT =	Prusa Block & Binary G-code reader / writer / converter

COMMIT =	d33a277a3ce2c0a7f9ba325caac6d730e0f7a412
PKGNAME =	libbgcode-20241024

DIST_TUPLE =	github prusa3d libbgcode ${COMMIT} .

SHARED_LIBS +=	bgcode_binarize           0.0 # 0.0
SHARED_LIBS +=	bgcode_convert            0.0 # 0.0
SHARED_LIBS +=	bgcode_core               0.0 # 0.0

CATEGORIES =	devel

# Affero GPL v3
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} boost_nowide-mt c m z

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/catch2 \
			archivers/heatshrink

LIB_DEPENDS =		devel/boost

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON \
			-DLibBGCode_BUILD_TESTS=OFF

.include <bsd.port.mk>
