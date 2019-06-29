# $OpenBSD: Makefile,v 1.22 2019/06/29 09:59:08 ajacoutot Exp $

COMMENT=		library for handling paper characteristics

DISTNAME=		libpaper_1.1.28
PKGNAME=		${DISTNAME:S/_/-/}

SHARED_LIBS +=  paper                0.0      # 2.2

CATEGORIES=		print

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=		http://packages.debian.org/unstable/source/libpaper

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c

MASTER_SITES=		${MASTER_SITE_DEBIAN:=main/libp/libpaper/}

WRKDIST=		${WRKDIR}/${DISTNAME:S/_/-/}

USE_GMAKE=		Yes

CONFIGURE_STYLE=	autoreconf

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15

pre-configure:
	sed -i 's,/bin/bash,/bin/sh,g' ${WRKSRC}/src/paperconfig.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libpaper
	echo 'a4' > ${PREFIX}/share/examples/libpaper/papersize

.include <bsd.port.mk>
