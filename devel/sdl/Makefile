# $OpenBSD: Makefile,v 1.81 2012/02/22 08:22:39 dcoppa Exp $

COMMENT=	cross-platform multimedia library

VERSION=	1.2.13
DISTNAME=	SDL-${VERSION}
PKGNAME=	${DISTNAME:L}
REVISION =	17
CATEGORIES=	devel

HOMEPAGE=	http://www.libsdl.org/

MAINTAINER=	Jacob Meuser <jakemsr@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		m sndio usbhid

MASTER_SITES=	ftp://ftp.fr.freebsd.org/pub/FreeBSD/distfiles/ \
		${HOMEPAGE}release/
MASTER_SITES0=	http://dev.beastie.hu/ \
		http://www.beastie.hu/

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	devel/yasm
.endif

FLAVORS=	aa caca no_x11 altivec
FLAVOR?=

USE_LIBTOOL=	Yes
USE_GROFF =	Yes
MODULES=	converters/libiconv

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/test
SHARED_LIBS=	SDL	8.0
CONFIGURE_ENV+=	X11BASE="${X11BASE}" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		WITH_SNDIO="Yes"

# in case devel/usb is installed, don't pick it up.
CONFIGURE_ENV+= ac_cv_lib_usb_hid_init=no \
		ac_cv_header_usb_h=no

CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		 --disable-arts \
		 --disable-esd \
		 --disable-oss \
		 --disable-pulseaudio \
		 --enable-nasm \
		 --enable-pthread-sem

.if ${FLAVOR:L:Maa}
LIB_DEPENDS+=	graphics/aalib
WANTLIB +=	aa
CONFIGURE_ARGS+= --enable-video-aalib
.else
CONFIGURE_ARGS+= --disable-video-aalib
.endif

.if ${FLAVOR:L:Mcaca}
PATCH_DIST_STRIP= -p1
PATCHFILES=	patch-libsd1.2.7-libcaca0.9.diff:0
LIB_DEPENDS+=	graphics/libcaca
WANTLIB +=	caca
CONFIGURE_ARGS+= --enable-video-caca
.else
SUPDISTFILES+=	patch-libsd1.2.7-libcaca0.9.diff:0
.endif

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+= --without-x \
		 --disable-video-x11
.else
WANTLIB+=	X11>=10 Xau Xdmcp Xext Xrandr Xrender pthread-stubs xcb
.endif

NO_REGRESS=	Yes

pre-configure:
	mkdir -p ${WRKSRC}/src/audio/libsndio
	cp ${FILESDIR}/SDL_libsndioaudio.{c,h} ${WRKSRC}/src/audio/libsndio

.include <bsd.port.mk>
