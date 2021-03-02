# $OpenBSD: Makefile,v 1.43 2021/03/02 17:31:24 sthen Exp $

# Also:  __sync_fetch_and_add_4 __sync_add_and_fetch_4 __sync_sub_and_fetch_4
BROKEN-hppa =		undefined reference to __sync_val_compare_and_swap_4

COMMENT =		client for Microsoft RDP (remote desktop protocol)
DISTNAME =		freerdp-2.3.1
DPB_PROPERTIES =	parallel
CATEGORIES =		x11 net

SHARED_LIBS +=  freerdp-client2           1.0
SHARED_LIBS +=  freerdp2                  1.1
SHARED_LIBS +=  winpr-tools2              1.0
SHARED_LIBS +=  winpr2                    1.0

HOMEPAGE =		https://www.freerdp.com/
MASTER_SITES =		https://pub.freerdp.com/releases/

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xcursor Xext Xfixes Xi Xinerama Xrandr Xrender Xv
WANTLIB += avcodec avutil c crypto cups epoll-shim m pthread ssl
WANTLIB += swresample usb-1.0 xkbfile

# thread-local storage
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

CFLAGS +=		-I${X11BASE}/include \
			-I${LOCALBASE}/include

CFLAGS +=		-fcommon

BUILD_DEPENDS =		security/pcsc-lite \
			textproc/xmlto

LIB_DEPENDS =		devel/libusb1 \
			print/cups,-libs \
			graphics/ffmpeg

# used to work-around lack of posix timers.
# not quite everything is correct, but works well enough for most use.
LIB_DEPENDS +=		devel/epoll-shim

CONFIGURE_ARGS +=	-DBUILD_TESTING=ON \
			-DWITH_CUPS=ON \
			-DWITH_DIRECTFB=OFF \
			-DWITH_GSTREAMER_0_10=OFF \
			-DWITH_GSTREAMER_1_0=OFF \
			-DWITH_OPENSLES=OFF \
			-DWITH_PCSC=ON \
			-DWITH_LIBSYSTEMD=OFF \
			-DWITH_OSS=OFF

.if ${MACHINE_ARCH} == "sparc64"
CONFIGURE_ARGS +=	-DWITH_NEON=OFF
.endif

pre-configure:
	sed -i 's,/usr/local,${LOCALBASE},g' ${WRKSRC}/{,winpr/libwinpr/}CMakeLists.txt

.include <bsd.port.mk>
