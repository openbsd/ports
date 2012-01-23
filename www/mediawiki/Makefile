# $OpenBSD: Makefile,v 1.34 2012/01/23 09:47:38 sthen Exp $

COMMENT =	web-based collaborative editing environment

DISTNAME =	mediawiki-1.18.1
CATEGORIES =	www

HOMEPAGE =	http://www.mediawiki.org/

MAINTAINER =	Wen Heping <wenheping@gmail.com>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES=	http://download.wikimedia.org/mediawiki/1.18/

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/mediawiki
SUBST_VARS=	INSTDIR

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-gd \
		php-mysql-${MODPHP_VSPEC}|php-pgsql-${MODPHP_VSPEC}:lang/php/${MODPHP_VERSION},-mysql

do-install:
	@mv ${WRKDIST} ${INSTDIR}
	@find ${PREFIX} -name '.cvsignore' -or -name \*.orig -exec rm {} \;
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}

.include <bsd.port.mk>
