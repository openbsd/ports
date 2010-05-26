# $OpenBSD: Makefile,v 1.10 2010/05/26 21:18:17 jakemsr Exp $

COMMENT=	free H264/AVC encoder

V=		20100511
DISTNAME=	x264-snapshot-${V}-2245
PKGNAME=	x264-${V}
CATEGORIES=	multimedia
MASTER_SITES=	ftp://ftp.videolan.org/pub/videolan/x264/snapshots/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	x264	4.0

HOMEPAGE=	http://www.videolan.org/developers/x264.html

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c m pthread

USE_GMAKE=	Yes
CONFIGURE_STYLE= simple
CONFIGURE_ENV=	API=${LIBx264_VERSION}
CONFIGURE_ARGS+=--disable-asm \
		--disable-ffms-input \
		--disable-lavf-input \
		--disable-mp4-output \
		--prefix=${PREFIX}

NO_REGRESS=	Yes

.include <bsd.port.mk>

.if ${NO_SHARED_LIBS:L} == "no"
CONFIGURE_ARGS+=--enable-shared \
		--enable-pic
.endif
