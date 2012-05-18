# $OpenBSD: Makefile,v 1.1.1.1 2012/05/18 19:51:35 sthen Exp $

COMMENT=	web-based rack/IP management

DISTNAME=	RackTables-0.19.12
PKGNAME=	${DISTNAME:L}
CATEGORIES=	www

HOMEPAGE=	http://www.racktables.org/
MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=racktables/}

MODULES=	lang/php

RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-gd \
		lang/php/${MODPHP_VERSION},-mysql \
		lang/php/${MODPHP_VERSION},-pdo_mysql \
		lang/php/${MODPHP_VERSION},-snmp

USE_GMAKE=	Yes
NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www

FAKE_FLAGS=     DESTDIR=${WRKINST} prefix=${PREFIX} \
		datadir=/var/www \
		docdir=/var/www/racktables \
		scriptdir=/var/www/racktables \
		staticdir=/var/www/htdocs/racktables \
		applibdir=/var/www/htdocs/racktables/inc \
		indexdir=/var/www/htdocs/racktables
INSTALL_TARGET=	install install-docs

post-install:
	cd ${WRKINST}/var/www; \
	    chown -R ${SHAREOWN}:${SHAREGRP} racktables htdocs/racktables

.include <bsd.port.mk>
