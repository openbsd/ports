# $OpenBSD: Makefile,v 1.86 2012/05/16 14:01:19 edd Exp $

COMMENT=	cross-platform multimedia library

VERSION=	1.2.15
DISTNAME=	SDL-${VERSION}
PKGNAME=	${DISTNAME:L}
REVISION=	2
CATEGORIES=	devel
MASTER_SITES=	${HOMEPAGE}release/

SHARED_LIBS=	SDL	8.0

HOMEPAGE=	http://www.libsdl.org/

MAINTAINER=	Jacob Meuser <jakemsr@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	m sndio usbhid

MODULES=	converters/libiconv

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	devel/nasm
.endif

FLAVORS=	aa no_x11
FLAVOR?=

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/test
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		 --disable-arts \
		 --disable-esd \
		 --disable-oss \
		 --disable-pulseaudio
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		WITH_SNDIO="Yes"

# in case devel/usb is installed, don't pick it up.
CONFIGURE_ENV+= ac_cv_lib_usb_hid_init=no \
		ac_cv_header_usb_h=no

.if ${FLAVOR:L:Maa}
WANTLIB+=	aa
LIB_DEPENDS+=	graphics/aalib
CONFIGURE_ARGS+= --enable-video-aalib
.endif

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+= --without-x \
		 --disable-video-x11
.else
#
# X11/Xext/Xrender/Xrandr are dlopen'd by SDL
#
WANTLIB+=	X11 Xau Xdmcp Xext Xrandr Xrender pthread-stubs xcb
.endif

NO_REGRESS=	Yes

pre-configure:
	@mkdir -p ${WRKSRC}/src/audio/libsndio
	@cp ${FILESDIR}/SDL_libsndioaudio.{c,h} ${WRKSRC}/src/audio/libsndio

.include <bsd.port.mk>
