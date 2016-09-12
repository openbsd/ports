# $OpenBSD: Makefile,v 1.6 2016/09/12 22:44:09 naddy Exp $

COMMENT =	barcode image processing library

GH_ACCOUNT =	glassechidna
GH_PROJECT =	zxing-cpp
GH_COMMIT =	0db7f855135222becff193671faae79c083424b6

DISTNAME =	zxing-20160426

CATEGORIES =	graphics

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c iconv m stdc++

MODULES =	devel/cmake
LIB_DEPENDS =	converters/libiconv
BUILD_DEPENDS =	devel/cppunit

do-test:
	${WRKBUILD}/testrunner

.include <bsd.port.mk>
