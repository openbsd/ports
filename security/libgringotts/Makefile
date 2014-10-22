# $OpenBSD: Makefile,v 1.11 2014/10/22 14:10:46 pea Exp $

COMMENT=	encryption backend

DISTNAME=	libgringotts-1.2.1
EXTRACT_SUFX= 	.tar.bz2
REVISION=	4

SHARED_LIBS +=  gringotts            0.0      # 2.7

CATEGORIES=	security

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += bz2 m mcrypt mhash z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gringotts.berlios/}

LIB_DEPENDS=	security/libmcrypt \
		archivers/bzip2 \
		security/mhash


CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
