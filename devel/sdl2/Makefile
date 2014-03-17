# $OpenBSD: Makefile,v 1.3 2014/03/17 09:49:46 ratchov Exp $

COMMENT=	cross-platform multimedia library

V=		2.0.2
DISTNAME=	SDL2-${V}
REVISION=	0
PKGNAME=	sdl2-${V}
CATEGORIES=	devel
MASTER_SITES=	http://www.libsdl.org/release/

SHARED_LIBS=	SDL2	0.1

HOMEPAGE=	http://www.libsdl.org/
MAINTAINER=	Brian Callahan <bcallah@openbsd.org>

# zlib
PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE=		Yes
SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/build-scripts
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		 --disable-alsa \
		 --disable-arts \
		 --disable-esd \
		 --disable-oss \
		 --disable-pulseaudio
# in case devel/usb is installed, don't pick it up.
CONFIGURE_ENV+= ac_cv_lib_usb_hid_init=no \
		ac_cv_header_usb_h=no

WANTLIB=	m pthread sndio usbhid
# GL/X11/Xext/Xrender/Xrandr are dlopen'd by SDL
WANTLIB+=       GL X11 Xau Xdmcp Xext Xrandr Xrender pthread-stubs xcb

NO_TEST=	Yes

.include <bsd.port.mk>
