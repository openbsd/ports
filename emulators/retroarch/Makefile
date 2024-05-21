COMMENT =		generic multi-emulator frontend

PKGNAME =		retroarch-${GH_TAGNAME:S/v//}

GH_ACCOUNT =		libretro
GH_PROJECT =		RetroArch
GH_TAGNAME =		v1.18.0

# crashes when recording videos due to ffmpeg
USE_NOBTCFI-amd64 =	Yes

CATEGORIES =		emulators

HOMEPAGE =		https://www.libretro.com/

# code GPLv3+, assets CC-BY-4.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL Qt5Concurrent Qt5Core Qt5Gui
WANTLIB += Qt5Network Qt5Widgets SDL2 X11 X11-xcb Xext Xinerama
WANTLIB += Xrandr Xv Xxf86vm ass avcodec avformat avutil c crypto
WANTLIB += drm fontconfig freetype fribidi gbm m openal ssl swresample
WANTLIB += swscale usb-1.0 xcb xkbcommon
WANTLIB += mbedcrypto mbedtls mbedx509

MODULES =		x11/qt5
RUN_DEPENDS =		devel/desktop-file-utils

BUILD_DEPENDS =		graphics/vulkan-tools
LIB_DEPENDS =		audio/openal \
			devel/libusb1 \
			devel/sdl2 \
			graphics/ffmpeg \
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
			--enable-al

DEBUG_PACKAGES = ${BUILD_PACKAGES}

NO_TEST =		Yes

# strip out byte order marks that break GCC 4.2
post-extract:
	sed -i s/$$(printf '\xef\xbb\xbf')// ${WRKSRC}/intl/msg_*

pre-build:
	${SUBST_CMD} ${WRKSRC}/retroarch.cfg

.include <bsd.port.mk>
