# $OpenBSD: Makefile,v 1.29 2014/06/02 22:01:02 brad Exp $

COMMENT=	free H.264/MPEG-4 AVC encoder

V=		20140525
DISTNAME=	x264-snapshot-${V}-2245
PKGNAME=	x264-${V}
CATEGORIES=	multimedia
MASTER_SITES=	http://downloads.videolan.org/pub/videolan/x264/snapshots/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	x264	13.0

HOMEPAGE=	http://www.videolan.org/developers/x264.html

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	c m pthread

MODULES=	lang/clang

MODCLANG_ARCHS=	amd64 i386
MODCLANG_LANGS=	c

.if ${MACHINE_ARCH} == "amd64"
BUILD_DEPENDS+=	devel/yasm
.endif

USE_GMAKE=	Yes
CONFIGURE_STYLE= simple
CONFIGURE_ENV=	API=${LIBx264_VERSION}
CONFIGURE_ARGS+=--disable-ffms \
		--disable-gpac \
		--disable-lavf \
		--disable-swscale \
		--enable-static \
		--prefix=${PREFIX}

.if ${MACHINE_ARCH} != "amd64"
CONFIGURE_ARGS+=--disable-asm
.endif

NO_TEST=	Yes

.include <bsd.port.mk>

.if ${NO_SHARED_LIBS:L} == "no"
CONFIGURE_ARGS+=--enable-shared \
		--system-libx264
.endif
