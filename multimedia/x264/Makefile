# $OpenBSD: Makefile,v 1.7 2008/08/22 12:43:33 brad Exp $

COMMENT=	free H264/AVC encoder

V=		20080713
DISTNAME=	x264-snapshot-${V}-2245
PKGNAME=	x264-${V}p1
CATEGORIES=	multimedia
MASTER_SITES=	ftp://ftp.videolan.org/pub/videolan/x264/snapshots/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	x264	2.0

HOMEPAGE=	http://www.videolan.org/developers/x264.html

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c m pthread

USE_GMAKE=	Yes
CONFIGURE_STYLE= simple
CONFIGURE_ENV=	API=${LIBx264_VERSION}
CONFIGURE_ARGS+=--prefix=${PREFIX} \
		--disable-mp4-output

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	::devel/yasm
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>

.if ${NO_SHARED_LIBS:L} == "no"
CONFIGURE_ARGS+=--enable-shared \
		--enable-pic
.endif
