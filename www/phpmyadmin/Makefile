# $OpenBSD: Makefile,v 1.31 2009/04/28 07:03:36 giovanni Exp $ 

COMMENT=	tool to handle the administration of MySQL over the web

V=		3.1.4
DISTNAME=	phpMyAdmin-${V}
CATEGORIES=	www
HOMEPAGE=	http://www.phpmyadmin.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=phpmyadmin/}
DISTFILES=	${DISTNAME}-all-languages${EXTRACT_SUFX}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*
EXTRACT_ONLY=

PREFIX=		/var/www
INSTDIR=	${PREFIX}/phpMyAdmin
SUBST_VARS=	INSTDIR V

RUN_DEPENDS=	:php5-mysql-*:www/php5/extensions,-mysql \
		:php5-mbstring-*:www/php5/extensions,-mbstring \
		:php5-mcrypt-*:www/php5/extensions,-mcrypt \
		:php5-gd-*:www/php5/extensions,-gd

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTFILES}
	@mv ${INSTDIR}-${V}-all-languages ${INSTDIR}

.include <bsd.port.mk>
