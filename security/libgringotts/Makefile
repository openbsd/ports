COMMENT=	encryption backend

DISTNAME=	libgringotts-1.2.1
EXTRACT_SUFX=	.tar.bz2
REVISION=	6

SHARED_LIBS +=  gringotts            0.0      # 2.7

CATEGORIES=	security

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += bz2 m mcrypt mhash z

SITES=		${SITE_SOURCEFORGE:=gringotts.berlios/}

LIB_DEPENDS=	security/libmcrypt \
		archivers/bzip2 \
		security/mhash

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
