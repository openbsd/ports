# $OpenBSD: Makefile,v 1.13 2011/03/12 21:07:09 jakemsr Exp $

COMMENT=	free H264/AVC encoder

V=		20110225
DISTNAME=	x264-snapshot-${V}-2245
PKGNAME=	x264-${V}
CATEGORIES=	multimedia
MASTER_SITES=	ftp://ftp.videolan.org/pub/videolan/x264/snapshots/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	x264	6.0

HOMEPAGE=	http://www.videolan.org/developers/x264.html

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c m pthread

MODULES=	gcc3
MODGCC3_ARCHES=	sparc

USE_GMAKE=	Yes
CONFIGURE_STYLE= simple
CONFIGURE_ENV=	API=${LIBx264_VERSION}
CONFIGURE_ARGS+=--disable-asm \
		--disable-ffms \
		--disable-gpac \
		--disable-lavf \
		--disable-swscale \
		--prefix=${PREFIX}

NO_REGRESS=	Yes

.include <bsd.port.mk>

.if ${NO_SHARED_LIBS:L} == "no"
CONFIGURE_ARGS+=--enable-shared
.endif
