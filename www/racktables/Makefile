COMMENT=	web-based rack/IP management

DISTNAME=	RackTables-0.21.5
PKGNAME=	${DISTNAME:L}
CATEGORIES=	www
REVISION=	0

HOMEPAGE=	https://www.racktables.org/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=racktables/}

MODULES=	lang/php

RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-gd \
		lang/php/${MODPHP_VERSION},-pdo_mysql \
		lang/php/${MODPHP_VERSION},-snmp \
		net/p5-Net-Telnet

USE_GMAKE=	Yes
NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www

FAKE_FLAGS=     DESTDIR=${WRKINST} prefix=${PREFIX} \
		datadir=/var/www \
		docdir=/var/www/racktables \
		scriptdir=/var/www/racktables \
		indexdir=/var/www/racktables/wwwroot \
		staticdir=/var/www/racktables/wwwroot \
		applibdir=/var/www/racktables/wwwroot/inc
INSTALL_TARGET=	install install-docs

post-install:
	cd ${WRKINST}/var/www; \
	${INSTALL_DATA_DIR} htdocs/racktables racktables/plugins; \
	echo "<?php require '../../racktables/wwwroot/index.php'; ?>" > htdocs/racktables/index.php; \
	chown -R ${SHAREOWN}:${SHAREGRP} racktables htdocs/racktables

.include <bsd.port.mk>
