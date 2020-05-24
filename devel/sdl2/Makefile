# $OpenBSD: Makefile,v 1.31 2020/05/24 03:24:54 jsg Exp $

COMMENT=	cross-platform multimedia library

V=		2.0.12
DISTNAME=	SDL2-${V}
PKGNAME=	sdl2-${V}
CATEGORIES=	devel
MASTER_SITES=	https://www.libsdl.org/release/

SHARED_LIBS=	SDL2		0.8	# 0.12

HOMEPAGE=	https://www.libsdl.org/

MAINTAINER=	Thomas Frohwein <thfr@openbsd.org>

DEBUG_PACKAGES=	${BUILD_PACKAGES}

# zlib
PERMIT_PACKAGE=	Yes

WANTLIB=	m pthread sndio usbhid samplerate
# GL/Xau/Xdmcp are dlopen'd by SDL
WANTLIB+=       GL X11 Xau xcb Xcursor Xdmcp Xext Xfixes Xi Xinerama
WANTLIB+=	Xrandr Xrender Xss Xxf86vm

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
		 --disable-libsamplerate-shared \
		 --disable-libudev \
		 --disable-nas \
		 --disable-oss \
		 --disable-pulseaudio \
		 --disable-sndio-shared \
		 --disable-x11-shared
# in case devel/usb is installed, don't pick it up.
CONFIGURE_ENV+= ac_cv_lib_usb_hid_init=no \
		ac_cv_header_usb_h=no

.if ${MACHINE_ARCH} == "hppa"
CONFIGURE_ARGS+= --disable-atomic
.endif

# clang can't handle simd asm
.if ${MACHINE_ARCH} == "arm"
CONFIGURE_ARGS+= --disable-arm-simd
.endif

# tests in test subdir, but interactive and not hooked up to build
NO_TEST=	Yes

.include <bsd.port.mk>
