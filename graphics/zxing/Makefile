# $OpenBSD: Makefile,v 1.12 2018/10/24 14:28:06 sthen Exp $

COMMENT =	barcode image processing library

GH_ACCOUNT =	glassechidna
GH_PROJECT =	zxing-cpp
GH_COMMIT =	5aad4744a3763d814df98a18886979893e638274

DISTNAME =	zxing-20180320
REVISION =	0

CATEGORIES =	graphics

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c iconv m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MODULES =	devel/cmake
LIB_DEPENDS =	converters/libiconv
BUILD_DEPENDS =	devel/cppunit
CONFIGURE_ARGS = -DCMAKE_LIBRARY_PATH=${LOCALBASE}/lib \
		-DBUILD_TESTING=yes

do-test:
	${WRKBUILD}/testrunner

.include <bsd.port.mk>
