# $OpenBSD: Makefile,v 1.3 2009/03/05 15:49:47 jasper Exp $

COMMENT=		open source web analytics software program

DISTNAME=		piwik-0.2.32
CATEGORIES=		www

HOMEPAGE=		http://www.piwik.org/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://spacehopper.org/mirrors/ \
			http://nedbsd.eu/~jasper/
EXTRACT_SUFX=		.zip

WRKDIST=		${WRKDIR}/piwik/

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

PREFIX=			/var/www
INSTDIR=		${PREFIX}/piwik/
SUBST_VARS=		INSTDIR

PHP_VERSION=	5
RUN_DEPENDS=	:php${PHP_VERSION}-gd-*:www/php${PHP_VERSION}/extensions,-gd \
		:php${PHP_VERSION}-mysql-*:www/php${PHP_VERSION}/extensions,-mysql \
		:php${PHP_VERSION}-pdo_mysql-*:www/php${PHP_VERSION}/extensions,-pdo_mysql

do-install:
	@cp -Rp ${WRKDIST} ${INSTDIR}
	@chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
