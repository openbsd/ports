# $OpenBSD: Makefile,v 1.14 2019/07/19 10:48:52 sthen Exp $

COMMENT=	barcode image processing library

GH_ACCOUNT=	glassechidna
GH_PROJECT=	zxing-cpp
GH_COMMIT=	e0e40ddec63f38405aca5c8c1ff60b85ec8b1f10

DISTNAME=	zxing-20190320

CATEGORIES=	graphics

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c iconv m

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake
LIB_DEPENDS=	converters/libiconv
BUILD_DEPENDS=	devel/cppunit

CONFIGURE_ARGS= -DCMAKE_LIBRARY_PATH=${LOCALBASE}/lib \
		-DBUILD_TESTING=yes

do-test:
	${WRKBUILD}/testrunner

.include <bsd.port.mk>
