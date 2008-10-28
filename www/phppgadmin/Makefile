# $OpenBSD: Makefile,v 1.7 2008/10/28 08:07:05 pea Exp $

COMMENT=	tool to handle the administration of PostgreSQL over the web

DISTNAME=	phpPgAdmin-4.2.1
CATEGORIES=	www databases
HOMEPAGE=	http://phppgadmin.sourceforge.net/	

MAINTAINER= 	Marc Balmer <mbalmer@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=phppgadmin/}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/phpPgAdmin
SUBST_VARS=	INSTDIR

PHP_VERSION=	5
RUN_DEPENDS=	:php${PHP_VERSION}-pgsql-*:www/php${PHP_VERSION}/extensions,-pgsql

do-install:
	@cp -Rp ${WRKDIST} ${INSTDIR}
	@chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
