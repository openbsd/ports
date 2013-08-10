# $OpenBSD: Makefile,v 1.16 2013/08/10 14:02:03 robert Exp $

COMMENT=	customer relationship management (CRM) software

DISTNAME=	vtigercrm-5.4.0
CATEGORIES=	www
REVISION=	0

HOMEPAGE=	http://www.vtiger.com/crmproducts/vtiger-crm-open-source

MAINTAINER=	Wen Heping <wenheping@gmail.com>

# Mozilla Public License Version 1.1
# vtiger Public License Version 1.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=vtigercrm/}

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*
WRKDIST=	${WRKDIR}/vtigercrm

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/vtigercrm
SUBST_VARS=	INSTDIR

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-gd \
		lang/php/${MODPHP_VERSION},-imap \
		lang/php/${MODPHP_VERSION},-mysql

do-install:
	cp -Rp ${WRKSRC} ${PREFIX}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
