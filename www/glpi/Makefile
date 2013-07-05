# $OpenBSD: Makefile,v 1.10 2013/07/05 09:34:35 jasper Exp $

COMMENT=		asset management software

DISTNAME=		glpi-0.83.91
CATEGORIES=		www productivity

HOMEPAGE=		http://www.glpi-project.org/

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=		https://forge.indepnet.net/attachments/download/1501/

MODULES=		lang/php

RUN_DEPENDS=		lang/php/${MODPHP_VERSION},-mysql

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

PREFIX=		${VARBASE}/www
INSTDIR=		${PREFIX}/glpi
SUBST_VARS=		INSTDIR

WRKDIST=		${WRKDIR}/glpi/

do-install:
	cp -pR ${WRKSRC} ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
