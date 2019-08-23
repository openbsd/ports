# $OpenBSD: Makefile,v 1.13 2019/08/23 20:18:04 cwen Exp $

COMMENT =		audio fingerprint extraction library

GH_ACCOUNT =		acoustid
GH_PROJECT =		chromaprint
GH_TAGNAME =		v1.4.3

SHARED_LIBS =		chromaprint               2.0 # 1.4.3

CATEGORIES =		audio devel

HOMEPAGE =		https://acoustid.org/chromaprint

# MIT with LGPL2.1+ parts
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} avcodec avformat avutil c m swresample

# C++11
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

BUILD_DEPENDS =		audio/taglib
# gtest presence is checked in configure stage, so this cannot be
# in TEST_DEPENDS
BUILD_DEPENDS +=	devel/gtest

LIB_DEPENDS =		graphics/ffmpeg

CONFIGURE_ARGS =	-DBUILD_TOOLS=ON \
			-DBUILD_TESTS=ON

TEST_TARGET =		check

pre-configure:
	${SUBST_CMD} ${WRKSRC}/cmake/modules/FindGTest.cmake

.include <bsd.port.mk>
