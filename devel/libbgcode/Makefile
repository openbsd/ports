COMMENT =	Prusa Block & Binary G-code reader / writer / converter

COMMIT =	5041c093b33e2748e76d6b326f2251310823f3df
PKGNAME =	libbgcode-20250220

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

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON

.include <bsd.port.mk>
