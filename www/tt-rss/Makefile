# $OpenBSD: Makefile,v 1.2 2009/08/23 17:16:38 jasper Exp $

COMMENT=		webbased rss reader with standalone look and feel

DISTNAME=		tt-rss-1.3.3
CATEGORIES=		www

HOMEPAGE=		http://tt-rss.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/download/

BUILD_DEPENDS=		::archivers/gtar
TAR=			${LOCALBASE}/bin/gtar

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

PREFIX=			/var/www
INSTDIR=		${PREFIX}/tt-rss/
SUBST_VARS=		INSTDIR

PHP_VERSION=	5
RUN_DEPENDS=	:php${PHP_VERSION}-mbstring-*:www/php${PHP_VERSION}/extensions,-mbstring \
		:php${PHP_VERSION}-pgsql-*:www/php${PHP_VERSION}/extensions,-pgsql \
		:php${PHP_VERSION}-xmlrpc-*:www/php${PHP_VERSION}/extensions,-xmlrpc

do-install:
	@cp -Rp ${WRKDIST} ${INSTDIR}
	@chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
