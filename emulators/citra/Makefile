# ships a dynarmic copy, and dynarmic only supports x86-64 and AArch64
ONLY_FOR_ARCHS =	amd64 arm64

USE_WXNEEDED =	Yes

COMMENT =	nintendo 3DS emulator

DISTNAME =	citra-unified-source-20240303-0ff3440

V =		2104
PKGNAME =	citra-0.0.0.${V}
REVISION =	3

CATEGORIES =	emulators

# GPLv2, BSD-2-clause (fmt), LGPL (getopt), MIT (httplib, json, lurlparser),
# "New BSD license" (inih), unlicense/public domain (microprofile),
# BSD-3-clause (nihstro), LGPLv2.1 (soundtouch), BSD-style (xbyak)
PERMIT_PACKAGE =	Yes

USE_NOBTCFI =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Concurrent Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Multimedia Qt6Network Qt6Widgets SDL2 SoundTouch
WANTLIB += boost_chrono-mt boost_container-mt boost_iostreams-mt
WANTLIB += boost_locale-mt boost_random-mt boost_regex-mt boost_serialization-mt
WANTLIB += boost_system-mt boost_thread-mt c crypto cryptopp enet
WANTLIB += fmt m openal ssl usb-1.0 xkbcommon

# ffmpeg is loaded via dlopen(3) when dumping recorded gameplay video
WANTLIB += avcodec avdevice avfilter avformat avutil swresample swscale

SITES =		https://archive.org/download/citra-latest-stuff/Nightly%20build%20%2B%20source%20-%200ff3440/
EXTRACT_SUFX =	.tar.xz

MODULES =	devel/cmake \
		x11/qt6 \

# C++20
COMPILER =	base-clang ports-clang

BUILD_DEPENDS =	devel/catch2 \
		devel/git \
		devel/robin-map

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+4,-guic

LIB_DEPENDS =	audio/openal \
		audio/soundtouch \
		devel/boost \
		devel/cryptopp \
		devel/fmt \
		devel/libusb1 \
		devel/sdl2 \
		graphics/ffmpeg \
		net/enet \
		x11/qt6/qtmultimedia

CONFIGURE_ARGS =	-DENABLE_CUBEB=OFF \
			-DENABLE_WEB_SERVICE=OFF \
			-DENABLE_WEB_SERVICE=OFF \
			-DUSE_SYSTEM_BOOST=ON \
			-DUSE_SYSTEM_SDL2=ON \
			-DENABLE_FFMPEG_AUDIO_DECODER=ON \
			-DENABLE_FFMPEG_VIDEO_DUMPER=ON \
			-DCITRA_USE_PRECOMPILED_HEADERS=OFF \
			-DDYNARMIC_USE_PRECOMPILED_HEADERS=OFF \
			-DUSE_SYSTEM_CATCH2=ON \
			-DUSE_SYSTEM_CRYPTOPP=ON \
			-DUSE_SYSTEM_FMT=ON \
			-DUSE_SYSTEM_FFMPEG_HEADERS=ON \
			-DUSE_SYSTEM_LIBUSB=ON \
			-DUSE_SYSTEM_ENET=ON \
			-DUSE_SYSTEM_OPENSSL=ON \
			-DUSE_SYSTEM_SOUNDTOUCH=ON \
			-DUSE_SYSTEM_OPENAL=ON \
			-DENABLE_VULKAN=OFF \
			-DCITRA_WARNINGS_AS_ERRORS=OFF

MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

WRKDIST =		${WRKDIR}/${DISTNAME}

CXXFLAGS +=		-I${LOCALBASE}/include

ppost-extract:
	rm -r ${WRKSRC}/externals/cryptopp-cmake \
		${WRKSRC}/externals/dynarmic/externals/catch/src/catch2 \
		${WRKSRC}/externals/dynarmic/externals/fmt

.if ${MACHINE_ARCH} == amd64
PKG_ARGS +=	-Dx86=1
.else
PKG_ARGS +=	-Dx86=0
.endif

.include <bsd.port.mk>
