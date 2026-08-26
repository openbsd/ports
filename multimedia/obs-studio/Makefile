COMMENT =		free live streaming and screen recording

V =			32.2.2
DIST_TUPLE =		github obsproject obs-studio ${V} .
DIST_TUPLE +=		github simd-everywhere simde v0.8.2 simde

CATEGORIES =		multimedia x11

HOMEPAGE =		https://obsproject.com/

MAINTAINER =		Daniil Ryvkin <mail@leinadr.com>

# upstream dropped support for 32-bit builds
ONLY_FOR_ARCHS =	${LP64_ARCHS}

# GPLv2+
PERMIT_PACKAGE =	Yes

SHARED_LIBS +=		obs                  0.1
SHARED_LIBS +=		obs-frontend-api     0.1
SHARED_LIBS +=		obs-opengl           0.0
SHARED_LIBS +=		obs-scripting        0.0

WANTLIB +=		${COMPILER_LIBCXX} ${MODPY_WANTLIB}
WANTLIB +=		EGL GL Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB +=		Qt6Svg Qt6Widgets Qt6Xml X11 X11-xcb avcodec avdevice
WANTLIB +=		avfilter avformat avutil c curl drm fontconfig freetype
WANTLIB +=		gio-2.0 intl jack jansson luajit-5.1 m mbedcrypto mbedtls
WANTLIB +=		mbedx509 pipewire-0.3 rnnoise sndio speexdsp swresample
WANTLIB +=		swscale util va va-drm wayland-client wayland-egl xcb
WANTLIB +=		xcb-composite xcb-randr xcb-render xcb-shape xcb-shm
WANTLIB +=		xcb-xfixes xcb-xinerama xcb-xinput x264 xkbcommon z uuid

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			x11/qt6 \
			lang/python

MODPY_RUNDEP =		No

BUILD_DEPENDS =		devel/swig \
			devel/uthash \
			devel/kf6/extra-cmake-modules \
			graphics/qr-code-generator \
			textproc/nlohmann-json

LIB_DEPENDS =		sysutils/e2fsprogs \
			audio/jack \
			audio/rnnoise \
			audio/speexdsp \
			devel/jansson \
			graphics/ffmpeg \
			lang/luajit \
			multimedia/pipewire/pipewire,-libs \
			multimedia/x264 \
			net/curl \
			security/mbedtls \
			wayland/wayland \
			x11/qt6/qtsvg

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/qt6/qtdeclarative \
			x11/qt6/qtwayland

MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib -L/usr/X11R6/lib
CONFIGURE_ARGS +=	-DENABLE_BROWSER=OFF \
			-DENABLE_PIPEWIRE=ON \
			-DENABLE_PULSEAUDIO=OFF \
			-DENABLE_ALSA=OFF \
			-DENABLE_JACK=ON \
			-DENABLE_SNDIO=ON \
			-DENABLE_WAYLAND=ON \
			-DENABLE_VST=OFF \
			-DENABLE_AJA=OFF \
			-DENABLE_WEBRTC=OFF \
			-DENABLE_NEW_MPEGTS_OUTPUT=OFF \
			-DENABLE_VLC=OFF \
			-DENABLE_V4L2=ON \
			-DENABLE_UDEV=OFF \
			-DENABLE_WEBSOCKET=OFF \
			-DENABLE_OSS=OFF \
			-DENABLE_SERVICE_UPDATES=OFF \
			-DENABLE_PYTHON=ON \
			-DENABLE_LUA=ON \
			-DENABLE_HEVC=ON \
			-DQT_VERSION=6 \
			-DOBS_VERSION_OVERRIDE=${V} \
			-DOBS_SOVERSION=0 \
			-DCMAKE_COMPILE_WARNING_AS_ERROR=OFF \
			-DOpenGL_GL_PREFERENCE=LEGACY \
			-DOPENGL_opengl_LIBRARY=GL \
			-DLibva_INCLUDE_DIR=/usr/X11R6/include \
			-DLibUUID_LIBRARY=uuid \
			-DLibUUID_INCLUDE_DIR=${LOCALBASE}/include \
			-DSIMDe_INCLUDE_DIR=${WRKSRC}/simde

NO_TEST =		Yes

post-patch:
	${INSTALL_DATA} ${FILESDIR}/os-openbsd-libobs.cmake \
		${WRKSRC}/libobs/cmake/os-openbsd.cmake
	${INSTALL_DATA} ${FILESDIR}/os-openbsd-frontend.cmake \
		${WRKSRC}/frontend/cmake/os-openbsd.cmake
	${INSTALL_DATA} ${FILESDIR}/system-info-openbsd.cpp \
		${WRKSRC}/frontend/utility/system-info-openbsd.cpp
DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
