COMMENT=	DVD navigation library

VER=		6.1.1
DISTNAME=	libdvdnav-${VER}
EPOCH=		0
CATEGORIES=	multimedia
SITES=		https://download.videolan.org/pub/videolan/libdvdnav/${VER}/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	dvdnav		7.2

HOMEPAGE=	http://dvdnav.mplayerhq.hu/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	dvdread>=9.0 pthread

LIB_DEPENDS=	devel/libdvdread>=6.1.2

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
