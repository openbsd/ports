# $OpenBSD: Makefile,v 1.37 2021/11/15 20:02:05 rsadowski Exp $

COMMENT=	cross-platform multimedia library

V=		2.0.16
DISTNAME=	SDL2-${V}
PKGNAME=	sdl2-${V}
CATEGORIES=	devel
MASTER_SITES=	https://www.libsdl.org/release/
REVISION=	0

SHARED_LIBS=	SDL2		0.10	# 0.16

HOMEPAGE=	https://www.libsdl.org/

MAINTAINER=	Thomas Frohwein <thfr@openbsd.org>

DEBUG_PACKAGES=	${BUILD_PACKAGES}

# zlib
PERMIT_PACKAGE=	Yes

WANTLIB+=	X11 Xcursor Xext Xfixes Xi Xinerama Xrandr Xrender Xss
WANTLIB+=	Xxf86vm m pthread samplerate sndio usbhid xcb
# GL and X11 libraries are dlopen'd by SDL
WANTLIB+=	GL

LIB_DEPENDS=	audio/libsamplerate

USE_GMAKE=		Yes
SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/build-scripts
CONFIGURE_ARGS+= --disable-alsa \
		 --disable-arts \
		 --disable-dbus \
		 --disable-esd \
		 --disable-ibus \
		 --disable-hidapi \
		 --disable-jack \
		 --disable-libsamplerate-shared \
		 --disable-libudev \
		 --disable-nas \
		 --disable-oss \
		 --disable-pulseaudio \
		 --disable-sndio-shared \
		 --disable-video-wayland \
		 --disable-video-wayland-qt-touch \
		 --disable-wayland-shared \
		 --disable-x11-shared
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.if ${MACHINE_ARCH} == "hppa"
CONFIGURE_ARGS+= --disable-atomic
.endif

# The assembly code contains AltiVec instructions, whose support is not
# properly detected at runtime. Fix SIGILLs on macppc G3s, while keeping
# it for powerpc64.
.if ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ARGS+= --enable-altivec=no
.endif

# tests in test subdir, but interactive and not hooked up to build
NO_TEST=	Yes

.include <bsd.port.mk>
