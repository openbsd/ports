# $OpenBSD: Makefile,v 1.13 2015/07/22 17:37:16 ajacoutot Exp $

COMMENT=	library for handling paper characteristics

MAJV=		1.1.24
MINV=		4
DISTNAME=	libpaper_${MAJV}%2bnmu${MINV}
PKGNAME=	libpaper-${MAJV}.${MINV}

SHARED_LIBS +=  paper                0.0      # 2.2

CATEGORIES=	print

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=	http://packages.debian.org/unstable/source/libpaper

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	${MASTER_SITE_DEBIAN:=main/libp/libpaper/}

WRKDIST=	${WRKDIR}/libpaper-${MAJV}+nmu${MINV}

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

pre-configure:
	perl -pi -e 's,/bin/bash,/bin/sh,g' ${WRKSRC}/src/paperconfig.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libpaper
	echo 'a4' > ${PREFIX}/share/examples/libpaper/papersize

.include <bsd.port.mk>
