# $OpenBSD: Makefile,v 1.1.1.1 2016/08/05 05:27:52 bentley Exp $

COMMENT =		generic multi-emulator frontend

V =			1.3.4
DISTNAME =		retroarch-$V

CATEGORIES =		emulators

HOMEPAGE =		http://www.libretro.com/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += EGL GL SDL2 X11 X11-xcb Xext Xinerama Xv Xxf86vm ass
WANTLIB += avcodec avformat avutil c drm freetype gbm m openal
WANTLIB += ossaudio pthread swresample swscale usb-1.0 xcb xkbcommon
WANTLIB += z

GH_ACCOUNT =		libretro
GH_PROJECT =		RetroArch
GH_TAGNAME =		v$V

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		audio/openal \
			devel/libusb1 \
			devel/sdl2 \
			graphics/ffmpeg \
			x11/xkbcommon

MAKE_FLAGS =		V=1 \
			HAVE_OSS=0 \
			HAVE_OSS_BSD=0 \
			OPTIMIZE_FLAG=
FAKE_FLAGS =		GLOBAL_CONFIG_DIR=${PREFIX}/share/examples

USE_GMAKE =		Yes
CONFIGURE_STYLE =	simple
CONFIGURE_ENV =		MAN_DIR=${PREFIX}/man/man1 \
			INCLUDE_DIRS="-I${X11BASE}/include" \
			LIBRARY_DIRS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
CONFIGURE_ARGS +=	--disable-jack \
			--disable-pulse \
			--disable-oss \
			--disable-v4l2 \
			--enable-al

NO_TEST =		Yes

pre-build:
	${SUBST_CMD} ${WRKSRC}/retroarch.cfg

.include <bsd.port.mk>
