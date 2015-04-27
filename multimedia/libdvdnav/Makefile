# $OpenBSD: Makefile,v 1.24 2015/04/27 12:17:36 ajacoutot Exp $

COMMENT=	DVD navigation library

VER=		5.0.3
DISTNAME=	libdvdnav-${VER}
EPOCH=		0
CATEGORIES=	multimedia
MASTER_SITES=	http://download.videolan.org/pub/videolan/libdvdnav/${VER}/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	dvdnav		7.1

HOMEPAGE=	http://dvdnav.mplayerhq.hu/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	dvdread>=6.1 pthread

LIB_DEPENDS=	devel/libdvdread>=5.0.3

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
