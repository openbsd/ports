# $OpenBSD: Makefile,v 1.22 2015/11/20 19:48:34 jca Exp $

# Also:  __sync_fetch_and_add_4 __sync_add_and_fetch_4 __sync_sub_and_fetch_4
BROKEN-hppa =		undefined reference to `__sync_val_compare_and_swap_4'

SHARED_ONLY =		Yes

COMMENT =		open source client for Windows Terminal Server
DISTNAME =		freerdp-1.2.0beta1
CATEGORIES =		x11 net

GH_ACCOUNT =		FreeRDP
GH_PROJECT =		FreeRDP
GH_COMMIT =		f5ff6e1bd819a347aa532c1ef1a9cf0c67387507

SHARED_LIBS +=  freerdp-client            0.0 # 1.2
SHARED_LIBS +=  freerdp                   0.0 # 1.2
SHARED_LIBS +=  winpr                     0.0 # 1.1
SHARED_LIBS +=  xfreerdp-client           0.0 # 1.2

HOMEPAGE =		http://www.freerdp.com/

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcursor Xext Xfixes Xi Xinerama Xrender Xv c crypto
WANTLIB += execinfo m pthread ssl xkbfile z

MODULES =		devel/cmake

CFLAGS +=		-I${X11BASE}/include -I${LOCALBASE}/include

BUILD_DEPENDS =		graphics/ffmpeg \
			print/cups,-libs \
			security/pcsc-lite \
			textproc/xmlto

LIB_DEPENDS =		devel/libexecinfo

CONFIGURE_ARGS +=	-DWITH_ALSA=OFF \
			-DWITH_CUPS=ON \
			-DWITH_DIRECTFB=OFF \
			-DWITH_GSTREAMER_0_10=OFF \
			-DWITH_GSTREAMER_1_0=OFF \
			-DWITH_OPENSLES=OFF \
			-DWITH_PCSC=ON \
			-DWITH_PULSE=OFF \
			-DWITH_WAYLAND=OFF \

# -msse3 requires a newer gcc
CONFIGURE_ARGS +=	-DWITH_SSE2=OFF

NO_TEST =		Yes

pre-configure:
	sed -i "s,/usr/local,${LOCALBASE},g" ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
