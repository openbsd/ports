# $OpenBSD: Makefile,v 1.68 2008/12/23 07:45:32 jakemsr Exp $

COMMENT=	cross-platform multimedia library

VERSION=	1.2.13
DISTNAME=	SDL-${VERSION}
PKGNAME=	${DISTNAME:L}p7
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
BUILD_DEPENDS+=	:yasm-*:devel/yasm
.endif

FLAVORS=	esd arts aa caca no_x11 altivec
FLAVOR?=

USE_LIBTOOL=	Yes
MODULES=	converters/libiconv

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/test
SHARED_LIBS=	SDL	8.0
CONFIGURE_ENV+=	X11BASE="${X11BASE}" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		WITH_LIBSNDIO="Yes"

# in case devel/usb is installed, don't pick it up.
CONFIGURE_ENV+= ac_cv_lib_usb_hid_init=no \
		ac_cv_header_usb_h=no

CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		 --disable-oss \
		 --disable-ltdl \
		 --disable-pulseaudio \
		 --enable-nasm \
		 --enable-pthread-sem \
		 --enable-sunaudio

.if ${FLAVOR:L:Mesd}
# used via dlopen()
LIB_DEPENDS+=	esd.>=2::audio/esound
CONFIGURE_ARGS+= --enable-esd
.else
CONFIGURE_ARGS+= --disable-esd
.endif

.if ${FLAVOR:L:Marts}
LIB_DEPENDS+=	artsc::x11/kde/arts3
WANTLIB+=	glib-2.0 gmodule-2.0 gthread-2.0 intl pcre stdc++
CONFIGURE_ARGS+= --enable-arts --disable-arts-shared
.else
CONFIGURE_ARGS+= --disable-arts
.endif

.if ${FLAVOR:L:Maa}
LIB_DEPENDS+=	aa::graphics/aalib
CONFIGURE_ARGS+= --enable-video-aalib
.else
CONFIGURE_ARGS+= --disable-video-aalib
.endif

.if ${FLAVOR:L:Mcaca}
PATCH_DIST_STRIP= -p1
PATCHFILES=	patch-libsd1.2.7-libcaca0.9.diff:0
LIB_DEPENDS+=	caca::graphics/libcaca
CONFIGURE_ARGS+= --enable-video-caca
.else
SUPDISTFILES+=	patch-libsd1.2.7-libcaca0.9.diff:0
.endif

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+= --without-x \
		 --disable-video-x11
.else
USE_X11=	Yes
WANTLIB+=	X11.>=10 Xau Xdmcp Xext Xrandr Xrender
.endif

.if ${FLAVOR:L:Maltivec}
ONLY_FOR_ARCHS=	powerpc
CONFIGURE_ARGS+=--enable-altivec
# XXX Segmentation fault
# Blit_RGB888_RGB565Altivec at SDL_blit_N.c:203
BROKEN=		segfault when altivec is enabled
.else
CONFIGURE_ARGS+=--disable-altivec
.endif

NO_REGRESS=	Yes

pre-configure:
	mkdir -p ${WRKSRC}/src/audio/libsndio
	cp ${FILESDIR}/SDL_libsndioaudio.{c,h} ${WRKSRC}/src/audio/libsndio

.include <bsd.port.mk>
