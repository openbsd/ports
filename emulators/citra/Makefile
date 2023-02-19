# See https://github.com/citra-emu/citra/issues/4571
NOT_FOR_ARCHS =	${BE_ARCHS}

BROKEN-i386 =	undefined reference to operator delete(void*, std::align_val_t), etc.

USE_WXNEEDED =	Yes

COMMENT =	nintendo 3DS emulator

DISTNAME =	citra-unified-source-20230110-ad2cbe2
V =		1827
PKGNAME =	citra-0.0.0.${V}
REVISION =	0

CATEGORIES =	emulators

# GPLv2, BSD-2-clause (fmt), LGPL (getopt), MIT (httplib, json, lurlparser),
# "New BSD license" (inih), unlicense/public domain (microprofile),
# BSD-3-clause (nihstro), LGPLv2.1 (soundtouch), BSD-style (xbyak)
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Multimedia Qt5Widgets
WANTLIB += SDL2 avcodec avformat avutil boost_serialization-mt
WANTLIB += c cryptopp enet fmt m swresample swscale usb-1.0

MASTER_SITES =	https://github.com/citra-emu/citra-nightly/releases/download/nightly-${V}/
EXTRACT_SUFX =	.tar.xz

MODULES =	devel/cmake \
		x11/qt5

# C++20
COMPILER =	base-clang ports-clang

BUILD_DEPENDS =	devel/catch2 \
		devel/robin-map

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

LIB_DEPENDS =	devel/boost \
		devel/cryptopp \
		graphics/ffmpeg \
		devel/fmt \
		devel/sdl2 \
		net/enet \
		x11/qt5/qtmultimedia

CONFIGURE_ARGS =	-DENABLE_CUBEB=OFF \
			-DENABLE_WEB_SERVICE=OFF \
			-DENABLE_WEB_SERVICE=OFF \
			-DUSE_SYSTEM_BOOST=ON \
			-DUSE_SYSTEM_SDL2=ON \
			-DENABLE_FFMPEG_AUDIO_DECODER=ON \
			-DENABLE_FFMPEG_VIDEO_DUMPER=ON \
			-DCITRA_USE_PRECOMPILED_HEADERS=OFF
MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

WRKDIST =		${WRKDIR}/${DISTNAME}

CXXFLAGS +=	-I${LOCALBASE}/include -I${LOCALBASE}/lib/qt5/cmake/Qt5/

post-extract:
	rm -rf ${WRKSRC}/externals/{sdl2,catch2,fmt,boost,cryptopp}

.if ${MACHINE_ARCH} == amd64 || ${MACHINE_ARCH} == i386
PKG_ARGS +=	-Dx86=1
.else
PKG_ARGS +=	-Dx86=0
.endif

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mclang}
BUILD_DEPENDS+=	devel/llvm
.endif

.include <bsd.port.mk>
