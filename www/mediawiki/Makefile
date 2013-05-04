# $OpenBSD: Makefile,v 1.41 2013/05/04 08:45:41 jasper Exp $

COMMENT =	web-based collaborative editing environment

V =		1.19.6
DISTNAME =	mediawiki-${V}
CATEGORIES =	www

HOMEPAGE =	http://www.mediawiki.org/

MAINTAINER =	Wen Heping <wenheping@gmail.com>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES=	http://download.wikimedia.org/mediawiki/${V:R}/

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/mediawiki
SUBST_VARS=	INSTDIR

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-gd \
		php-mysql-${MODPHP_VSPEC}|php-pgsql-${MODPHP_VSPEC}:lang/php/${MODPHP_VERSION},-mysql

do-install:
	@${INSTALL_DATA_DIR} ${INSTDIR}
	@cd ${WRKSRC} && pax -rw * ${INSTDIR}
	@find ${INSTDIR} \( -name '.cvsignore' -or -name \*.orig \) -exec rm -f {} +
	@chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
