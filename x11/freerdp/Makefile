# $OpenBSD: Makefile,v 1.28 2017/02/01 11:43:23 sthen Exp $

BROKEN-arm =		unrecognized option -mfpu=neon
# Also:  __sync_fetch_and_add_4 __sync_add_and_fetch_4 __sync_sub_and_fetch_4
BROKEN-hppa =		undefined reference to __sync_val_compare_and_swap_4

COMMENT =		open source client for Windows Terminal Server
DISTNAME =		freerdp-1.2.0beta1
CATEGORIES =		x11 net
REVISION =		1

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

WANTLIB += X11 Xcursor Xext Xfixes Xi Xinerama Xrender Xv avcodec
WANTLIB += avutil c crypto cups execinfo m pthread ssl xkbfile
WANTLIB += z

MODULES =		devel/cmake

CFLAGS +=		-I${X11BASE}/include -I${LOCALBASE}/include

BUILD_DEPENDS =		security/pcsc-lite \
			textproc/xmlto

LIB_DEPENDS =		devel/libexecinfo \
			print/cups,-libs \
			graphics/ffmpeg

CONFIGURE_ARGS +=	-DWITH_ALSA=OFF \
			-DWITH_CUPS=ON \
			-DWITH_DIRECTFB=OFF \
			-DWITH_GSTREAMER_0_10=OFF \
			-DWITH_GSTREAMER_1_0=OFF \
			-DWITH_OPENSLES=OFF \
			-DWITH_PCSC=ON \
			-DWITH_PULSE=OFF

# XXX does not build
CONFIGURE_ARGS +=	-DCHANNEL_DRIVE=OFF

# -msse3 requires a newer gcc
CONFIGURE_ARGS +=	-DWITH_SSE2=OFF

NO_TEST =		Yes

pre-configure:
	sed -i "s,/usr/local,${LOCALBASE},g" ${WRKSRC}/CMakeLists.txt

.if ${MACHINE_ARCH} == "sparc64"
CONFIGURE_ARGS +=	-DWITH_NEON=OFF
.endif

.include <bsd.port.mk>
