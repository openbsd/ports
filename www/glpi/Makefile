# $OpenBSD: Makefile,v 1.3 2012/10/13 13:19:59 jasper Exp $

COMMENT=		asset management software

DISTNAME=		glpi-0.83.5
CATEGORIES=		www productivity

HOMEPAGE=		http://www.glpi-project.org/

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		https://forge.indepnet.net/attachments/download/1312/

MODULES=		lang/php

RUN_DEPENDS=		lang/php/${MODPHP_VERSION},-mysql

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

PREFIX=			/var/www
INSTDIR=		${PREFIX}/glpi
SUBST_VARS=		INSTDIR

WRKSRC=			${WRKDIR}/glpi/

do-install:
	cp -pR ${WRKSRC} ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
