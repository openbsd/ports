# $OpenBSD: Makefile,v 1.2 2005/10/20 20:19:42 sturm Exp $

COMMENT=	"tool to handle the administration of PostgreSQL over the web"

DISTNAME=	phpPgAdmin-3.5.5
CATEGORIES=	www databases
HOMEPAGE=	http://phppgadmin.sourceforge.net/	

MAINTAINER= 	Denis Chatelain <denis.chatelain@octopodus.com>	

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=phppgadmin/}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*
EXTRACT_ONLY=

PREFIX=		/var/www
INSTDIR=	${PREFIX}/phpPgAdmin
SUBST_VARS=	INSTDIR

PHP_VERSION=	5
RUN_DEPENDS=	:php${PHP_VERSION}-pgsql-*:www/php${PHP_VERSION}/extensions,-pgsql

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}

.include <bsd.port.mk>
