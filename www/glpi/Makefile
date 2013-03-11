# $OpenBSD: Makefile,v 1.6 2013/03/11 11:44:42 espie Exp $

COMMENT=		asset management software

DISTNAME=		glpi-0.83.7
CATEGORIES=		www productivity

HOMEPAGE=		http://www.glpi-project.org/

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=		https://forge.indepnet.net/attachments/download/1387/

MODULES=		lang/php

RUN_DEPENDS=		lang/php/${MODPHP_VERSION},-mysql

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

PREFIX=			/var/www
INSTDIR=		${PREFIX}/glpi
SUBST_VARS=		INSTDIR

WRKSRC=			${WRKDIR}/glpi/

do-install:
	cp -pR ${WRKSRC} ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
