# $OpenBSD: Makefile,v 1.9 2013/06/23 10:04:47 ajacoutot Exp $

COMMENT=	encryption backend

DISTNAME=	libgringotts-1.2.1
EXTRACT_SUFX= 	.tar.bz2
REVISION=	2

SHARED_LIBS +=  gringotts            0.0      # 2.7

CATEGORIES=	security

HOMEPAGE=	http://gringotts.berlios.de/

MAINTAINER=	Pierre-Emmanuel Andre <pea@raveland.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += bz2 m mcrypt mhash z

MASTER_SITES=	${MASTER_SITE_BERLIOS:=gringotts/}

LIB_DEPENDS=	security/libmcrypt \
		archivers/bzip2 \
		security/mhash


CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
