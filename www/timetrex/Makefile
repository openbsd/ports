# $OpenBSD: Makefile,v 1.11 2009/04/14 19:41:26 ajacoutot Exp $

COMMENT=	web-based payroll and time management suite

V=		2.2.21
DISTNAME=	TimeTrex_Standard_Edition_v${V}
PKGNAME=	timetrex-${V}
CATEGORIES=	www productivity

EXTRACT_SUFX=	.zip

HOMEPAGE=	http://www.timetrex.com/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# TimeTrex Public License Version 1.1.0 ("TPL")
# (i.e modified MPL)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=timetrex/}

RUN_DEPENDS=	:php5-gd-*:www/php5/extensions,-gd \
		:php5-soap-*:www/php5/extensions,-soap \
		::www/pear

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/timetrex
SUBST_VARS=	INSTDIR

do-install:
	mv ${WRKSRC} ${INSTDIR}
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD ${INSTDIR}
	${SUBST_CMD} ${INSTDIR}/timetrex.ini.php-example_linux \
		${INSTDIR}/README.OpenBSD
	find ${INSTDIR} -type f -name \*.orig -or -name \*.bak | xargs rm
	chown -R ${BINOWN}:${BINGRP} ${INSTDIR}

.include <bsd.port.mk>
