# $OpenBSD: Makefile,v 1.19 2018/01/07 22:56:46 awolk Exp $

COMMENT=	cross-platform multimedia library
BROKEN-hppa=	src/atomic/SDL_spinlock.c:101:2: error: \
		#error Please implement for your platform.

V=		2.0.7
DISTNAME=	SDL2-${V}
PKGNAME=	sdl2-${V}
CATEGORIES=	devel
MASTER_SITES=	http://www.libsdl.org/release/

SHARED_LIBS=	SDL2		0.4	# 0.7

HOMEPAGE=	http://www.libsdl.org/

MAINTAINER=	Thomas Frohwein <frohwein@ymail.com>

# zlib
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	m pthread sndio usbhid samplerate
# GL/X11/Xext/Xrender/Xrandr are dlopen'd by SDL
WANTLIB+=       GL X11 Xau Xdmcp Xext Xrandr Xrender xcb

LIB_DEPENDS=	audio/libsamplerate

USE_GMAKE=		Yes
SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/build-scripts
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS+= --disable-alsa \
		 --disable-arts \
		 --disable-dbus \
		 --disable-esd \
		 --disable-ibus \
		 --disable-jack \
		 --disable-libudev \
		 --disable-nas \
		 --disable-oss \
		 --disable-pulseaudio
# in case devel/usb is installed, don't pick it up.
CONFIGURE_ENV+= ac_cv_lib_usb_hid_init=no \
		ac_cv_header_usb_h=no

NO_TEST=	Yes

.include <bsd.port.mk>
