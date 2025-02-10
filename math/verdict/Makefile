COMMENT =		compute quality functions of 2 and 3-dimensional regions

GH_ACCOUNT =		sandialabs
GH_PROJECT =		verdict
GH_TAGNAME =		1.4.2

SHARED_LIBS +=  	verdict		0.0 # 0.0

CATEGORIES =		math
MAINTAINER =		Johannes Thyssen Tishman <ports@thyssentishman.com>

# BSD 3-clause
PERMIT_PACKAGE =	Yes

WANTLIB += 		${COMPILER_LIBCXX} m

COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake

BUILD_DEPENDS =		devel/gtest

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON

.include <bsd.port.mk>
