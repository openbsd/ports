# $OpenBSD: Makefile,v 1.5 2011/10/02 19:25:51 naddy Exp $

COMMENT=	encryption backend

DISTNAME=	libgringotts-1.2.1
REVISION=	1
SHARED_LIBS=	gringotts 0.0	# .2.7

EXTRACT_SUFX= 	.tar.bz2

CATEGORIES=	security

HOMEPAGE=	http://gringotts.berlios.de/

MAINTAINER=	Pierre-Emmanuel Andre <pea@raveland.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	bz2>=10 m mcrypt>=8 mhash z

MASTER_SITES=	${MASTER_SITE_BERLIOS:=gringotts/}

LIB_DEPENDS=	security/libmcrypt \
		archivers/bzip2 \
		security/mhash

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--without-x

.include <bsd.port.mk>
