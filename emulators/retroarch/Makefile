# $OpenBSD: Makefile,v 1.11 2018/06/06 09:08:59 bentley Exp $

COMMENT =		generic multi-emulator frontend

V =			1.7.2
REVISION =		1
DISTNAME =		RetroArch-$V
PKGNAME =		retroarch-$V

CATEGORIES =		emulators

HOMEPAGE =		https://www.libretro.com/

# code GPLv3+, assets CC-BY-4.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += EGL GL SDL2 X11 X11-xcb Xext Xinerama Xv Xxf86vm ass
WANTLIB += avcodec avformat avutil c drm freetype gbm m openal
WANTLIB += pthread swresample swscale usb-1.0 xcb xkbcommon
WANTLIB += z

MASTER_SITES =		https://github.com/libretro/RetroArch/releases/download/v$V/

EXTRACT_SUFX =		.tar.xz

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		audio/openal \
			devel/libusb1 \
			devel/sdl2 \
			graphics/ffmpeg \
			x11/xkbcommon

MAKE_FLAGS =		V=1 \
			CXX="${CXX}" \
			HAVE_OSS=0 \
			HAVE_OSS_BSD=0 \
			OPTIMIZE_FLAG=
FAKE_FLAGS =		GLOBAL_CONFIG_DIR=${PREFIX}/share/examples

USE_GMAKE =		Yes
CONFIGURE_STYLE =	simple
CONFIGURE_ENV =		MAN_DIR=${PREFIX}/man \
			INCLUDE_DIRS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LIBRARY_DIRS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
CONFIGURE_ARGS +=	--disable-jack \
			--disable-pulse \
			--disable-oss \
			--disable-v4l2 \
			--enable-al

NO_TEST =		Yes

# strip out byte order marks that break GCC 4.2
post-extract:
	sed -i s/$$(printf '\xef\xbb\xbf')// ${WRKSRC}/intl/msg_* \
		${WRKSRC}/menu/widgets/menu_osk_utf8_pages.h

pre-build:
	${SUBST_CMD} ${WRKSRC}/retroarch.cfg

.include <bsd.port.mk>
