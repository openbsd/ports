# $OpenBSD: Makefile,v 1.10 2005/10/13 06:04:30 kevlo Exp $ 

COMMENT=	"tool to handle the administration of MySQL over the web"

V=		2.6.4
DISTNAME=	phpMyAdmin-${V}-pl2
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

RUN_DEPENDS=	:php5-mysql-*:www/php5/extensions,-mysql \
		:php5-mbstring-*:www/php5/extensions,-mbstring

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@mv ${INSTDIR}-${V}-pl2 ${INSTDIR}
	@mv ${INSTDIR}/config.inc.php ${INSTDIR}/config.inc.php.default

.include <bsd.port.mk>
