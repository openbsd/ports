# $OpenBSD: Makefile,v 1.4 2015/11/06 15:45:17 sthen Exp $

COMMENT =	barcode image processing library

GH_ACCOUNT =	glassechidna
GH_PROJECT =	zxing-cpp
GH_COMMIT =	5ce91bb1c23b6cfb6a9ac076f10a4b2037810a91

DISTNAME =	zxing-20151004

CATEGORIES =	graphics

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m stdc++

MODULES =	converters/libiconv devel/cmake
BUILD_DEPENDS =	devel/cppunit

do-test:
	${WRKBUILD}/testrunner

.include <bsd.port.mk>
