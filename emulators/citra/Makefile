# $OpenBSD: Makefile,v 1.3 2018/06/08 05:23:21 bentley Exp $

BROKEN-i386 =	always_inline function '_mm_sra_pi32' requires target feature 'mmx', but would be inlined into function 'calcCrossCorr' that is compiled without support for 'mmx'

USE_WXNEEDED =	Yes

COMMENT =	nintendo 3DS emulator

V =		717
DISTNAME =	citra-nightly-${V}
PKGNAME =	citra-0.0.0.${V}

CATEGORIES =	emulators

MAINTAINER =	Thomas Frohwein <tfrohwein@fastmail.com>

# GPLv2, BSD-2-clause (fmt), LGPL (getopt), MIT (httplib, json, lurlparser),
# "New BSD license" (inih), unlicense/public domain (microprofile),
# BSD-3-clause (nihstro), LGPLv2.1 (soundtouch), BSD-style (xbyak)
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Multimedia Qt5Network Qt5OpenGL
WANTLIB += Qt5Widgets SDL2 c cryptopp enet iconv m

MASTER_SITES =	https://spacehopper.org/mirrors/

MODULES =	devel/cmake \
		x11/qt5
BUILD_DEPENDS =	devel/catch2 \
		devel/boost
RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic
LIB_DEPENDS =	devel/cryptopp \
		devel/sdl2 \
		net/enet \
		x11/qt5/qtmultimedia

CONFIGURE_ARGS =	-DCMAKE_CXX_FLAGS="-I${LOCALBASE}/include ${CXXFLAGS}" \
			-DCMAKE_PREFIX_PATH="-I${LOCALBASE}/lib/qt5/cmake/Qt5/" \
			-DENABLE_CUBEB=OFF \
			-DENABLE_WEB_SERVICE=OFF

do-test:
	cd ${WRKBUILD}/src/tests && ./tests

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mclang}
BUILD_DEPENDS+=	devel/llvm
.endif

.include <bsd.port.mk>
