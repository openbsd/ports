# $OpenBSD: Makefile,v 1.17 2016/11/14 08:47:45 ajacoutot Exp $

COMMENT=		library for handling paper characteristics

MAJV=			1.1.24
MINV=			5
DISTNAME=		libpaper_${MAJV}+nmu${MINV}
PKGNAME=		libpaper-${MAJV}.${MINV}

SHARED_LIBS +=  paper                0.0      # 2.2

CATEGORIES=		print

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=		http://packages.debian.org/unstable/source/libpaper

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=		${MASTER_SITE_DEBIAN:=main/libp/libpaper/}

WRKDIST=		${WRKDIR}/libpaper-${MAJV}+nmu${MINV}

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu

AUTOCONF_VERSION=		2.69
AUTOMAKE_VERSION=		1.15
BUILD_DEPENDS +=		${MODGNU_AUTOCONF_DEPENDS} \
				${MODGNU_AUTOMAKE_DEPENDS} \
				devel/libtool

pre-configure:
	sed -i 's,/bin/bash,/bin/sh,g' ${WRKSRC}/src/paperconfig.in
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf -i

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libpaper
	echo 'a4' > ${PREFIX}/share/examples/libpaper/papersize

.include <bsd.port.mk>
