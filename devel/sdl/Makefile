# $OpenBSD: Makefile,v 1.46 2006/10/18 17:53:08 pvalchev Exp $
# Uses pthreads

COMMENT=	"cross-platform multimedia library"

VERSION=	1.2.11
DISTNAME=	SDL-${VERSION}
PKGNAME=	${DISTNAME:L}
CATEGORIES=	devel

HOMEPAGE=	http://www.libsdl.org/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		m usbhid

MASTER_SITES=	${HOMEPAGE}release/ \
		http://www.devolution.com/~slouken/SDL/release/
MASTER_SITES0=	http://dev.beastie.hu/ \
		http://www.beastie.hu/

FLAVORS=	sun esd arts aa caca no_x11
FLAVOR?=	sun

USE_LIBTOOL=	Yes
MODULES=	converters/libiconv

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/test
SHARED_LIBS=	SDL	7.0
CONFIGURE_ENV+=	X11BASE="${X11BASE}" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"


# in case devel/usb is installed, don't pick it up.
CONFIGURE_ENV+= ac_cv_lib_usb_hid_init=no \
		ac_cv_header_usb_h=no

CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		 --disable-oss \
		 --disable-ltdl \
		 --enable-pthread-sem

.include <bsd.own.mk>
USE_GCC3?=No
# XXX gcc 3/nasm issue.
.if (${MACHINE_ARCH} == "i386") && (${CC} != "egcc" && ${USE_GCC3:L} != "yes")
BUILD_DEPENDS+=	nasm::devel/nasm
CONFIGURE_ARGS+= --enable-nasm
.else
CONFIGURE_ARGS+= --disable-nasm
.endif

.if ${FLAVOR:L:Msun}
CONFIGURE_ARGS+= --enable-openbsdaudio
.else
CONFIGURE_ARGS+= --disable-openbsdaudio
.endif

.if ${FLAVOR:L:Mesd}
LIB_DEPENDS+=	esd.>=2::audio/esound
CONFIGURE_ARGS+= --enable-esd
.else
CONFIGURE_ARGS+= --disable-esd
.endif

.if ${FLAVOR:L:Marts}
LIB_DEPENDS+=	artsc::x11/kde/arts3
CONFIGURE_ARGS+= --enable-arts
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
WANTLIB+=	X11 Xext Xrandr Xrender
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>
