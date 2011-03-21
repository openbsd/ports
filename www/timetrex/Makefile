# $OpenBSD: Makefile,v 1.25 2011/03/21 14:13:02 ajacoutot Exp $

COMMENT=	web-based payroll and time management suite

V=		3.3.1
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

RUN_DEPENDS=	www/php5/extensions,-gd \
		www/php5/extensions,-soap \
		php5-mysql-*|php5-pgsql-*:www/php5/extensions,-mysql \
		www/pear

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/timetrex
SUBST_VARS=	INSTDIR

do-install:
	mv ${WRKSRC} ${INSTDIR}
	${SUBST_CMD} ${INSTDIR}/timetrex.ini.php-example_linux
	find ${INSTDIR} -type f -name \*.orig -or -name \*.bak | xargs rm
	find ${INSTDIR} -name \*.beforesubst | xargs rm
	chown -R ${BINOWN}:${BINGRP} ${INSTDIR}

.include <bsd.port.mk>
