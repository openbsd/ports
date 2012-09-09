# $OpenBSD: Makefile,v 1.39 2012/09/09 21:00:10 jasper Exp $

COMMENT =	web-based collaborative editing environment

V =		1.19.2
DISTNAME =	mediawiki-${V}
REVISION =	0
CATEGORIES =	www

HOMEPAGE =	http://www.mediawiki.org/

MAINTAINER =	Wen Heping <wenheping@gmail.com>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES=	http://download.wikimedia.org/mediawiki/${V:R}/

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
	@${INSTALL_DATA_DIR} ${INSTDIR}
	@cd ${WRKSRC} && pax -rw * ${INSTDIR}
	@find ${INSTDIR} \( -name '.cvsignore' -or -name \*.orig \) -exec rm -f {} +
	@chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
