COMMENT =	client for Microsoft RDP (remote desktop protocol)

DISTNAME =	freerdp-3.30.0

CATEGORIES =	x11 net

DPB_PROPERTIES = parallel

SHARED_LIBS +=	freerdp-client3           0.0 # 0.0
SHARED_LIBS +=	freerdp3                  0.0 # 0.0
SHARED_LIBS +=	winpr-tools3              0.0 # 0.0
SHARED_LIBS +=	winpr3                    0.0 # 0.0

HOMEPAGE =	https://www.freerdp.com/
SITES =		https://pub.freerdp.com/releases/

# Apache 2.0
PERMIT_PACKAGE = Yes

WANTLIB += ICE SM X11 Xcursor Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += Xv avcodec avdevice avfilter avformat avutil c crypto
WANTLIB += cups epoll-shim execinfo icudata icui18n icuio icuuc
WANTLIB += jansson m pthread sndio ssl swresample swscale uriparser
WANTLIB += usb-1.0 xkbfile z

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# thread-local storage; C11
COMPILER =	base-clang ports-gcc
COMPILER_LANGS = c

MODULES =	devel/cmake

CFLAGS +=	-I${X11BASE}/include \
		-I${LOCALBASE}/include

BUILD_DEPENDS =	security/pcsc-lite \
		textproc/xmlto

LIB_DEPENDS =	devel/libusb1 \
		print/cups,-libs \
		graphics/ffmpeg \
		textproc/icu4c \
		devel/jansson \
		www/uriparser

# used to work-around lack of posix timers.
# not quite everything is correct, but works well enough for most use.
LIB_DEPENDS +=	devel/epoll-shim

CONFIGURE_ARGS += \
		-DUSE_VERSION_FROM_GIT_TAG=OFF \
		-DUSE_GIT_FOR_REVISION=OFF \
		-DBUILD_TESTING=ON \
		-DWITH_CCACHE=OFF \
		-DWITH_CUPS=ON \
		-DWITH_DIRECTFB=OFF \
		-DWITH_FUSE=OFF \
		-DWITH_GSTREAMER_0_10=OFF \
		-DWITH_GSTREAMER_1_0=OFF \
		-DWITH_KRB5=OFF \
		-DWITH_OPENSLES=OFF \
		-DWITH_PCSC=ON \
		-DWITH_LIBSYSTEMD=OFF \
		-DWITH_OSS=OFF \
		-DWITH_SNDIO=ON

# experimental, pulls in libpam
CONFIGURE_ARGS += -DWITH_SERVER=OFF

# SDL 2.x experimental, disabled by default
# SDL 3.x on by default but needs devel/sdl3 devel/sdl3-ttf (the latter unported)
# is SDL support worth the extra deps?
# if so, maybe subpackage to reduce them for the common case?
CONFIGURE_ARGS += -DWITH_CLIENT_SDL=OFF

# wants at least LDEP on wayland/wayland x11/xkbcommon
CONFIGURE_ARGS += -DWITH_WAYLAND=OFF

# might no longer be needed
.if ${MACHINE_ARCH} == "sparc64"
CONFIGURE_ARGS += -DWITH_SIMD=OFF
.endif

.include <bsd.port.mk>
