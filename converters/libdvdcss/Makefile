# $OpenBSD: Makefile,v 1.30 2019/07/14 00:39:35 naddy Exp $

COMMENT=	descramble scrambled DVDs

VER=		1.4.2
REVISION=	0
DISTNAME=	libdvdcss-${VER}
CATEGORIES=	converters
MASTER_SITES=	https://download.videolan.org/pub/videolan/libdvdcss/${VER}/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	dvdcss	4.1

HOMEPAGE=	https://www.videolan.org/developers/libdvdcss.html

# GPLv2+
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-doc

.include <bsd.port.mk>
