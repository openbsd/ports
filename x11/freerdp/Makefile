COMMENT =		client for Microsoft RDP (remote desktop protocol)
DISTNAME =		freerdp-2.11.6
DPB_PROPERTIES =	parallel
CATEGORIES =		x11 net

SHARED_LIBS +=  freerdp-client2           1.1
SHARED_LIBS +=  freerdp2                  3.0
SHARED_LIBS +=  winpr-tools2              1.0
SHARED_LIBS +=  winpr2                    2.1

HOMEPAGE =		https://www.freerdp.com/
SITES =			https://pub.freerdp.com/releases/

# add sndio patchset, not yet in 2.x branch
# mirrored from https://github.com/FreeRDP/FreeRDP/commit/b3a2042103a192d9e4482691ce9e7d73f9475b09.patch
# (github patch files aren't stable)
SITES.sndio =		https://spacehopper.org/mirrors/
PATCHFILES.sndio =	freerdp-sndio-upd2.patch
PATCH_DIST_STRIP =	-p1

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xcursor Xext Xfixes Xi Xinerama Xrandr Xrender Xv
WANTLIB += avcodec avutil c crypto cups epoll-shim execinfo m pthread sndio
WANTLIB += ssl swresample usb-1.0 xkbfile

# thread-local storage; C11
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MODULES =		devel/cmake

CFLAGS +=		-I${X11BASE}/include \
			-I${LOCALBASE}/include

BUILD_DEPENDS =		security/pcsc-lite \
			textproc/xmlto

LIB_DEPENDS =		devel/libusb1 \
			print/cups,-libs \
			graphics/ffmpeg

# used to work-around lack of posix timers.
# not quite everything is correct, but works well enough for most use.
LIB_DEPENDS +=		devel/epoll-shim

CONFIGURE_ARGS +=	-DBUILD_TESTING=ON \
			-DWITH_CCACHE=OFF \
			-DWITH_CUPS=ON \
			-DWITH_DIRECTFB=OFF \
			-DWITH_GSTREAMER_0_10=OFF \
			-DWITH_GSTREAMER_1_0=OFF \
			-DWITH_OPENSLES=OFF \
			-DWITH_PCSC=ON \
			-DWITH_LIBSYSTEMD=OFF \
			-DWITH_OSS=OFF \
			-DWITH_SNDIO=ON

.if ${MACHINE_ARCH} == "sparc64"
CONFIGURE_ARGS +=	-DWITH_NEON=OFF
.endif

pre-configure:
	sed -i 's,/usr/local,${LOCALBASE},g' ${WRKSRC}/{,winpr/libwinpr/}CMakeLists.txt

.include <bsd.port.mk>
