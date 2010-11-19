# $OpenBSD: Makefile,v 1.5 2010/11/19 07:52:49 jasper Exp $

COMMENT=	customer relationship management (CRM) software

DISTNAME=	vtigercrm-5.2.1
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

RUN_DEPENDS=	:php5-core-*:www/php5/core \
		:php5-gd-*:www/php5/extensions,-gd \
		:php5-imap-*:www/php5/extensions,-imap \
		:php5-mysql-*:www/php5/extensions,-mysql

do-install:
	@tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} -C ${PREFIX}
	@chown -R ${BINOWN}:${BINGRP} ${INSTDIR}

.include <bsd.port.mk>
