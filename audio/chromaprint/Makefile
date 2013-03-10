# $OpenBSD: Makefile,v 1.2 2013/03/10 22:55:01 espie Exp $
SHARED_ONLY =		Yes
COMMENT =		audio fingerprint extraction library
CATEGORIES =		audio devel
HOMEPAGE =		http://acoustid.org/chromaprint/
DISTNAME =		chromaprint-0.6

MASTER_SITES =		http://www.ohvost.ru/dnl/ \
			http://malcolm.ecentrum.hu/distfiles/

SHARED_LIBS =		chromaprint		0.0  # 0.1

# LGPL2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		avcodec avutil m stdc++

MODULES =		devel/cmake

BUILD_DEPENDS =		audio/taglib \
			devel/boost

LIB_DEPENDS =		graphics/ffmpeg

# gtest presence is checked in configure stage, so this cannot be in TEST_DEPENDS
BUILD_DEPENDS +=	devel/gtest
CONFIGURE_ARGS =	-DBUILD_TESTS:Bool=Yes

do-test:
	cd ${WRKBUILD}/tests && ${MAKE_PROGRAM} check

.include <bsd.port.mk>
