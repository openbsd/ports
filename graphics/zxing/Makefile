# $OpenBSD: Makefile,v 1.5 2016/05/20 19:06:57 sthen Exp $

COMMENT =	barcode image processing library

GH_ACCOUNT =	glassechidna
GH_PROJECT =	zxing-cpp
GH_COMMIT =	0db7f855135222becff193671faae79c083424b6

DISTNAME =	zxing-20160426

CATEGORIES =	graphics

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m stdc++

MODULES =	converters/libiconv devel/cmake
BUILD_DEPENDS =	devel/cppunit

do-test:
	${WRKBUILD}/testrunner

.include <bsd.port.mk>
