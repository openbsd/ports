# $OpenBSD: Makefile,v 1.29 2020/12/26 19:02:45 kmos Exp $

COMMENT=	DVD navigation library

VER=		6.1.0
DISTNAME=	libdvdnav-${VER}
EPOCH=		0
CATEGORIES=	multimedia
MASTER_SITES=	https://download.videolan.org/pub/videolan/libdvdnav/${VER}/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	dvdnav		7.2

HOMEPAGE=	http://dvdnav.mplayerhq.hu/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	dvdread>=9.0 pthread

LIB_DEPENDS=	devel/libdvdread>=6.1.1

CONFIGURE_STYLE= gnu

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS+=	-std=gnu99
.endif

.include <bsd.port.mk>
