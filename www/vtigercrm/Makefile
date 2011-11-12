# $OpenBSD: Makefile,v 1.11 2011/11/12 13:22:29 ajacoutot Exp $

COMMENT=	customer relationship management (CRM) software

DISTNAME=	vtigercrm-5.3.0
CATEGORIES=	www

HOMEPAGE=	http://www.vtiger.com/crmproducts/vtiger-crm-open-source

# GPLv2 - LGPLv2 - BSD
# SugarCRM Public License (SPL) 1.1.2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=vtigercrm/}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*
WRKDIST=	${WRKDIR}/vtigercrm

PREFIX=		/var/www
INSTDIR=	${PREFIX}/vtigercrm
SUBST_VARS=	INSTDIR

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-gd \
		lang/php/${MODPHP_VERSION},-imap \
		lang/php/${MODPHP_VERSION},-mysql

do-install:
	cp -Rp ${WRKSRC} ${PREFIX}
	chown -R ${BINOWN}:${BINGRP} ${INSTDIR}

.include <bsd.port.mk>
