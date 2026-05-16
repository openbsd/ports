COMMENT =		scanf for modern C++

GH_ACCOUNT =		eliaskosunen
GH_PROJECT =		scnlib
GH_TAGNAME =		v4.0.1

SHARED_LIBS +=		scn	0.0 # 0.0

CATEGORIES =		devel
HOMEPAGE =		https://www.scnlib.dev/
MAINTAINER =		Johannes Thyssen Tishman <jtt@openbsd.org>

PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} m

COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake \
			lang/python

BUILD_DEPENDS =		devel/fast-float \
			devel/gtest

CONFIGURE_ARGS +=	-DSCN_USE_EXTERNAL_FAST_FLOAT=ON \
			-DSCN_USE_EXTERNAL_GTEST=ON \
			-DSCN_BENCHMARKS=OFF \
			-DSCN_DOCS=OFF \
			-DSCN_EXAMPLES=OFF \
			-DBUILD_SHARED_LIBS=ON

.include <bsd.port.mk>
