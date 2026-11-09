COMMENT=	DVD navigation library

VER=		7.0.0
DISTNAME=	libdvdnav-${VER}
EPOCH=		0
CATEGORIES=	multimedia
SITES=		https://download.videolan.org/pub/videolan/libdvdnav/${VER}/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	dvdnav		7.2

HOMEPAGE=	http://dvdnav.mplayerhq.hu/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	dvdread>=9.0

LIB_DEPENDS=	devel/libdvdread>=7.1.1

MODULES=	devel/meson

.include <bsd.port.mk>
