# $OpenBSD: Makefile,v 1.6 2017/04/10 11:45:22 sthen Exp $

COMMENT =		audio fingerprint extraction library

DISTNAME =		chromaprint-1.1
CATEGORIES =		audio devel
HOMEPAGE =		https://acoustid.org/chromaprint/
MASTER_SITES =		https://bitbucket.org/acoustid/chromaprint/downloads/

SHARED_LIBS =		chromaprint               1.0 # 0.1

# LGPL2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += avcodec avformat avutil c m pthread ${LIBCXX} swresample

MODULES =		devel/cmake

BUILD_DEPENDS =		audio/taglib \
			devel/boost

LIB_DEPENDS =		graphics/ffmpeg

# gtest presence is checked in configure stage, so this cannot be in TEST_DEPENDS
BUILD_DEPENDS +=	devel/gtest
CONFIGURE_ARGS =	-DBUILD_TESTS:Bool=Yes -DBUILD_EXAMPLES=ON

post-patch:
	sed -i 's,/usr/local,${LOCALBASE},' \
		${WRKSRC}/cmake/modules/FindGTest.cmake

do-test:
	cd ${WRKBUILD}/tests && ./all_tests

.include <bsd.port.mk>
