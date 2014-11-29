# $OpenBSD: Makefile,v 1.23 2014/11/29 07:36:37 brad Exp $

COMMENT=	DVD navigation library

VER=		5.0.1
DISTNAME=	libdvdnav-${VER}
EPOCH=		0
CATEGORIES=	multimedia
MASTER_SITES=	http://download.videolan.org/pub/videolan/libdvdnav/${VER}/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	dvdnav		7.0

HOMEPAGE=	http://dvdnav.mplayerhq.hu/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	dvdread pthread

LIB_DEPENDS=	devel/libdvdread>=5.0.0

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
