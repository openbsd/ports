# $OpenBSD: Makefile,v 1.5 2005/03/08 06:55:01 kevlo Exp $ 

COMMENT=	"tool to handle the administration of MySQL over the web"

V=		2.6.1
DISTNAME=	phpMyAdmin-${V}-pl3
PKGNAME=	phpMyAdmin-${V:S/-/./}
CATEGORIES=	www
HOMEPAGE=	http://www.phpmyadmin.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=phpmyadmin/}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*
EXTRACT_ONLY=

PREFIX=		/var/www
INSTDIR=	${PREFIX}/phpMyAdmin
SUBST_VARS=	INSTDIR

RUN_DEPENDS=	:php5-mysql-*:www/php5/extensions,-mysql

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@mv ${INSTDIR}-${V}-pl3 ${INSTDIR}
	@mv ${INSTDIR}/config.inc.php ${INSTDIR}/config.inc.php.default

.include <bsd.port.mk>
