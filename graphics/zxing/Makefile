# $OpenBSD: Makefile,v 1.8 2017/07/16 19:18:57 espie Exp $

COMMENT =	barcode image processing library

GH_ACCOUNT =	glassechidna
GH_PROJECT =	zxing-cpp
GH_COMMIT =	0db7f855135222becff193671faae79c083424b6

DISTNAME =	zxing-20160426

CATEGORIES =	graphics

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c iconv m ${COMPILER_LIBCXX}

MODULES =	devel/cmake
LIB_DEPENDS =	converters/libiconv
BUILD_DEPENDS =	devel/cppunit

do-test:
	${WRKBUILD}/testrunner

.include <bsd.port.mk>
