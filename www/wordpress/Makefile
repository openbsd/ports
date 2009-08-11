# $OpenBSD: Makefile,v 1.20 2009/08/11 23:43:17 martynas Exp $

COMMENT =	standard compliant weblog

DISTNAME =	wordpress-2.8.3
CATEGORIES =	www

HOMEPAGE =	http://wordpress.org/
MAINTAINER =	Michael Erdely <merdely@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${HOMEPAGE}

RUN_DEPENDS =	:php5-mysql-*:www/php5/extensions,-mysql

NO_BUILD =	Yes
NO_REGRESS =	Yes
PKG_ARCH =	*

PREFIX =	/var/www
INSTDIR =	${PREFIX}/wordpress
WRKDIST =	${WRKDIR}/wordpress

SUBST_VARS =	INSTDIR

pre-configure:
	find ${WRKDIST} -name "*.orig" -execdir rm {} \;

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/wordpress
	cd ${WRKSRC} && pax -rw * ${PREFIX}/wordpress

.include <bsd.port.mk>
