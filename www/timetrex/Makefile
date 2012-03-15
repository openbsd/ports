# $OpenBSD: Makefile,v 1.37 2012/03/15 12:48:05 ajacoutot Exp $

COMMENT=	web-based payroll and time management suite

V=		5.0.3
DISTNAME=	TimeTrex_Standard_Edition_v${V}
PKGNAME=	timetrex-${V}
CATEGORIES=	www productivity
REVISION=	0

EXTRACT_SUFX=	.zip

HOMEPAGE=	http://www.timetrex.com/

# AGPLv3 (GNU Affero Public License)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=timetrex/}

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-gd \
		lang/php/${MODPHP_VERSION},-soap \
		php-mysql-${MODPHP_VSPEC}|php-pgsql-${MODPHP_VSPEC}:lang/php/${MODPHP_VERSION},-mysql \
		www/pear

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/timetrex
SUBST_VARS=	INSTDIR MODPHP_BIN

do-install:
	mv ${WRKSRC} ${INSTDIR}
	${SUBST_CMD} ${INSTDIR}/timetrex.ini.php-example_linux
	find ${INSTDIR} -type f -name \*.orig -or -name \*.bak | xargs rm
	find ${INSTDIR} -name \*.beforesubst | xargs rm
	chown -R ${BINOWN}:${BINGRP} ${INSTDIR}

.include <bsd.port.mk>
