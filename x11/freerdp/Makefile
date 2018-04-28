# $OpenBSD: Makefile,v 1.31 2018/04/28 19:20:17 landry Exp $

# Also:  __sync_fetch_and_add_4 __sync_add_and_fetch_4 __sync_sub_and_fetch_4
BROKEN-hppa =		undefined reference to __sync_val_compare_and_swap_4

COMMENT =		open source client for Windows Terminal Server
DISTNAME =		freerdp-2.0.0-rc1
PKGNAME =		freerdp-2.0.0rc1
CATEGORIES =		x11 net

SHARED_LIBS +=  freerdp-client2           0.0 # 2.0
SHARED_LIBS +=  freerdp2                  0.0 # 2.0
SHARED_LIBS +=  winpr-tools2              0.0 # 2.0
SHARED_LIBS +=  winpr2                    0.0 # 2.0

HOMEPAGE =		http://www.freerdp.com/
MASTER_SITES =		http://pub.freerdp.com/releases/

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcursor Xext Xfixes Xi Xinerama Xrender Xv avcodec
WANTLIB += avutil c crypto cups execinfo m pthread ssl xkbfile

MODULES =		devel/cmake

CFLAGS +=		-I${X11BASE}/include -I${LOCALBASE}/include

BUILD_DEPENDS =		security/pcsc-lite \
			textproc/xmlto

LIB_DEPENDS =		devel/libexecinfo \
			print/cups,-libs \
			graphics/ffmpeg

CONFIGURE_ARGS +=	-DWITH_CUPS=ON \
			-DWITH_DIRECTFB=OFF \
			-DWITH_GSTREAMER_0_10=OFF \
			-DWITH_GSTREAMER_1_0=OFF \
			-DWITH_OPENSLES=OFF \
			-DWITH_PCSC=ON \
			-DWITH_LIBSYSTEMD=OFF \
			-DWITH_OSS=OFF

NO_TEST =		Yes

pre-configure:
	${SUBST_CMD}	${WRKSRC}/winpr/libwinpr/CMakeLists.txt
	${SUBST_CMD}	${WRKSRC}/CMakeLists.txt

.if ${MACHINE_ARCH} == "sparc64"
CONFIGURE_ARGS +=	-DWITH_NEON=OFF
.endif

.include <bsd.port.mk>
