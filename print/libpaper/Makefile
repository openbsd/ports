# $OpenBSD: Makefile,v 1.7 2013/03/11 11:37:54 espie Exp $

COMMENT=	library for handling paper characteristics

V=		1.1.24
DISTNAME=	libpaper_${V}
PKGNAME=	libpaper-${V}
SHARED_LIBS+=	paper 0.0	# .2.2
CATEGORIES=	print

HOMEPAGE=	http://packages.debian.org/unstable/source/libpaper

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_DEBIAN:=main/libp/libpaper/}

WRKDIST=	${WRKDIR}/libpaper-${V}

WANTLIB=	c

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS=	${CONFIGURE_SHARED}

pre-configure:
	@perl -pi -e 's,/bin/bash,/bin/sh,g' ${WRKSRC}/src/paperconfig.in

.include <bsd.port.mk>
