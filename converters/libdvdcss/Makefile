# $OpenBSD: Makefile,v 1.24 2014/11/29 07:38:18 brad Exp $

COMMENT=	descramble scrambled DVDs

VER=		1.3.0
DISTNAME=	libdvdcss-${VER}
CATEGORIES=	converters
MASTER_SITES=	http://download.videolan.org/pub/videolan/libdvdcss/${VER}/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	dvdcss	4.0

HOMEPAGE=	http://www.videolan.org/developers/libdvdcss.html

# GPLv2+
PERMIT_PACKAGE_CDROM=	Free speech issue
PERMIT_PACKAGE_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-doc

.include <bsd.port.mk>
