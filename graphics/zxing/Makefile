COMMENT=	barcode image processing library

GH_ACCOUNT=	glassechidna
GH_PROJECT=	zxing-cpp
GH_COMMIT=	e0e40ddec63f38405aca5c8c1ff60b85ec8b1f10

DISTNAME=	zxing-20190320
REVISION=	3

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

CATEGORIES=	graphics

# Apache 2.0
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB += ${COMPILER_LIBCXX} c iconv m

COMPILER=	base-clang ports-gcc

DEBUG_PACKAGES=	${BUILD_PACKAGES}
MODULES=	devel/cmake
LIB_DEPENDS=	converters/libiconv
BUILD_DEPENDS=	devel/cppunit

CONFIGURE_ARGS=	-DBUILD_TESTING=ON

do-test:
	${WRKBUILD}/testrunner

.include <bsd.port.mk>
