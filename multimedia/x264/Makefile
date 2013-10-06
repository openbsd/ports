# $OpenBSD: Makefile,v 1.26 2013/10/06 20:38:52 brad Exp $

COMMENT=	free H.264/MPEG-4 AVC encoder

V=		20131002
DISTNAME=	x264-snapshot-${V}-2245
PKGNAME=	x264-${V}
CATEGORIES=	multimedia
MASTER_SITES=	http://downloads.videolan.org/pub/videolan/x264/snapshots/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	x264	12.0

HOMEPAGE=	http://www.videolan.org/developers/x264.html

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	c m pthread

USE_GMAKE=	Yes
CONFIGURE_STYLE= simple
CONFIGURE_ENV=	API=${LIBx264_VERSION}
CONFIGURE_ARGS+=--disable-asm \
		--disable-ffms \
		--disable-gpac \
		--disable-lavf \
		--disable-swscale \
		--enable-static \
		--prefix=${PREFIX}

NO_TEST=	Yes

.include <bsd.port.mk>

.if ${NO_SHARED_LIBS:L} == "no"
CONFIGURE_ARGS+=--enable-shared \
		--system-libx264
.endif
