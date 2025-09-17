COMMENT =		generic multi-emulator frontend

DISTNAME =		retroarch-sourceonly-$V
PKGNAME =		retroarch-$V

V =			1.21.0

# crashes when recording videos due to ffmpeg
USE_NOBTCFI-amd64 =	Yes

SITES =			https://github.com/libretro/RetroArch/releases/download/v$V/

EXTRACT_SUFX =		.tar.xz

CATEGORIES =		emulators

HOMEPAGE =		https://www.libretro.com/

# code GPLv3+, assets CC-BY-4.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL Qt6Concurrent Qt6Core Qt6Gui
WANTLIB += Qt6Network Qt6Widgets SDL2 X11 X11-xcb Xext Xi Xinerama
WANTLIB += Xrandr Xss Xxf86vm ass avcodec avdevice avformat avutil c crypto
WANTLIB += drm fontconfig freetype fribidi gbm lzma m mbedcrypto
WANTLIB += mbedtls mbedx509 openal pipewire-0.3 ssl swresample swscale xcb
WANTLIB += xkbcommon

MODULES =		x11/qt6
RUN_DEPENDS =		devel/desktop-file-utils

BUILD_DEPENDS =		graphics/vulkan-tools
LIB_DEPENDS =		audio/openal \
			devel/sdl2 \
			graphics/ffmpeg \
			multimedia/pipewire/pipewire,-libs \
			security/polarssl \
			x11/xkbcommon

MAKE_FLAGS =		V=1 \
			CXX="${CXX}" \
			HAVE_CHD=0 \
			HAVE_OSS=0 \
			HAVE_OSS_BSD=0 \
			OPTIMIZE_FLAG=
FAKE_FLAGS =		GLOBAL_CONFIG_DIR=${PREFIX}/share/examples

USE_GMAKE =		Yes
CONFIGURE_STYLE =	simple
CONFIGURE_ENV =		MAN_DIR=${PREFIX}/man \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
			CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
CONFIGURE_ARGS =	--disable-discord \
			--disable-jack \
			--disable-wayland \
			--disable-udev \
			--disable-pulse \
			--disable-oss \
			--disable-v4l2 \
			--disable-caca \
			--disable-flac \
			--disable-sixel \
			--enable-al

DEBUG_PACKAGES = ${BUILD_PACKAGES}

NO_TEST =		Yes

# strip out byte order marks that break GCC 4.2
post-extract:
	sed -i s/$$(printf '\xef\xbb\xbf')// ${WRKSRC}/intl/msg_*

pre-build:
	${SUBST_CMD} ${WRKSRC}/retroarch.cfg

.include <bsd.port.mk>
