# $OpenBSD: Makefile,v 1.9 2013/11/01 23:10:19 ajacoutot Exp $

COMMENT=	library for handling paper characteristics

V=		1.1.24
DISTNAME=	libpaper_${V}
PKGNAME=	libpaper-${V}
REVISION=	0

SHARED_LIBS +=  paper                0.0      # 2.2

CATEGORIES=	print

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=	http://packages.debian.org/unstable/source/libpaper

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	${MASTER_SITE_DEBIAN:=main/libp/libpaper/}

WRKDIST=	${WRKDIR}/libpaper-${V}

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

pre-configure:
	perl -pi -e 's,/bin/bash,/bin/sh,g' ${WRKSRC}/src/paperconfig.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libpaper
	echo 'a4' > ${PREFIX}/share/examples/libpaper/papersize

.include <bsd.port.mk>
