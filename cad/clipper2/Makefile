COMMENT =	library to perform boolean operations on polygons

V =		1.5.4
PKGNAME =	clipper2-${V}
GH_ACCOUNT =	AngusJohnson
GH_PROJECT =	Clipper2
GH_TAGNAME =	Clipper2_${V}

SHARED_LIBS +=	Clipper2                  0.0 # 0.0
SHARED_LIBS +=	Clipper2Z                 0.0 # 0.0

CATEGORIES =	cad

HOMEPAGE =	https://www.angusj.com/clipper2

# Boost Software License 1.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} m

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

WRKSRC =	${WRKDIST}/CPP

BUILD_DEPENDS =	devel/gtest

CONFIGURE_ARGS = -DBUILD_SHARED_LIBS=ON \
		-DUSE_EXTERNAL_GTEST=ON \
		-DCLIPPER2_EXAMPLES=OFF

.include <bsd.port.mk>
