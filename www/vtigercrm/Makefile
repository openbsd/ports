# $OpenBSD: Makefile,v 1.10 2011/09/16 12:00:09 espie Exp $

COMMENT=	customer relationship management (CRM) software

DISTNAME=	vtigercrm-5.2.1
REVISION=	3
CATEGORIES=	www

HOMEPAGE=	http://www.vtiger.com/

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
EXTRACT_ONLY=

PREFIX=		/var/www
INSTDIR=	${PREFIX}/vtigercrm
SUBST_VARS=	INSTDIR

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-gd \
		lang/php/${MODPHP_VERSION},-imap \
		lang/php/${MODPHP_VERSION},-mysql

do-install:
	@tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} -C ${PREFIX}
	@chown -R ${BINOWN}:${BINGRP} ${INSTDIR}

.include <bsd.port.mk>
