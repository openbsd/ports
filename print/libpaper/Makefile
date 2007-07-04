# $OpenBSD: Makefile,v 1.1.1.1 2007/07/04 17:32:41 ajacoutot Exp $

COMMENT=	library for handling paper characteristics

V=		1.1.21
DISTNAME=	libpaper_${V}
PKGNAME=	libpaper-${V}
SHARED_LIBS+=	paper 0.0	# .2.2
CATEGORIES=	print

HOMEPAGE=	http://packages.debian.org/unstable/source/libpaper

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ftp.debian.org/debian/pool/main/libp/libpaper/ \
		http://ftp.fr.debian.org/debian/pool/main/libp/libpaper/

WRKDIST=	${WRKDIR}/libpaper-${V}

WANTLIB=	c

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS=	${CONFIGURE_SHARED}

pre-configure:
	@perl -pi -e 's,/bin/bash,/bin/sh,g' ${WRKSRC}/src/paperconfig.in

.include <bsd.port.mk>
