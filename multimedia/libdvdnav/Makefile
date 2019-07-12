# $OpenBSD: Makefile,v 1.26 2019/07/12 20:47:56 sthen Exp $

COMMENT=	DVD navigation library

VER=		6.0.0
DISTNAME=	libdvdnav-${VER}
EPOCH=		0
CATEGORIES=	multimedia
MASTER_SITES=	https://download.videolan.org/pub/videolan/libdvdnav/${VER}/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	dvdnav		7.1

HOMEPAGE=	http://dvdnav.mplayerhq.hu/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	dvdread>=7.0 pthread

LIB_DEPENDS=	devel/libdvdread>=6.0.1

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
