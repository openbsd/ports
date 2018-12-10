# $OpenBSD: Makefile,v 1.19 2018/12/10 12:06:20 ajacoutot Exp $

COMMENT=		library for handling paper characteristics

DISTNAME=		libpaper_1.1.25
PKGNAME=		${DISTNAME:S/_/-/}

SHARED_LIBS +=  paper                0.0      # 2.2

CATEGORIES=		print

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=		http://packages.debian.org/unstable/source/libpaper

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=		${MASTER_SITE_DEBIAN:=main/libp/libpaper/}

WRKDIST=		${WRKDIR}/${DISTNAME:S/_/-/}

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu

AUTOCONF_VERSION=		2.69
AUTOMAKE_VERSION=		1.15
BUILD_DEPENDS +=		${MODGNU_AUTOCONF_DEPENDS} \
				${MODGNU_AUTOMAKE_DEPENDS} \
				devel/libtool

pre-configure:
	sed -i 's,/bin/bash,/bin/sh,g' ${WRKSRC}/src/paperconfig.in
	cd ${WRKSRC} && env -i ${AUTOCONF_ENV} autoreconf -fi

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libpaper
	echo 'a4' > ${PREFIX}/share/examples/libpaper/papersize

.include <bsd.port.mk>
