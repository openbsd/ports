# $OpenBSD: Makefile,v 1.1.1.1 2007/07/04 11:54:32 ajacoutot Exp $

COMMENT=	customer relationship management (CRM) software

DISTNAME=	vtigercrm-5.0.3
DISTPATCH=	vtigerCRM-5.0.3-PHP5.2-Patch1
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		${DISTPATCH}${EXTRACT_SUFX}
CATEGORIES=	www

HOMEPAGE=	http://www.vtiger.com/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
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
	@tar zxf ${FULLDISTDIR}/${DISTPATCH}${EXTRACT_SUFX} -C ${INSTDIR}
	@chown -R ${BINOWN}:${BINGRP} ${INSTDIR}

.include <bsd.port.mk>
