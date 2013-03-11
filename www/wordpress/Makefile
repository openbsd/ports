# $OpenBSD: Makefile,v 1.45 2013/03/11 11:44:50 espie Exp $

COMMENT =	standard compliant weblog

DISTNAME =	wordpress-3.5.1
CATEGORIES =	www

HOMEPAGE =	http://wordpress.org/
MAINTAINER =	Michael Erdely <merdely@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE}

MODULES =	lang/php

RUN_DEPENDS =	lang/php/${MODPHP_VERSION},-mysql

NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*

PREFIX =	/var/www
INSTDIR =	${PREFIX}/wordpress
WRKDIST =	${WRKDIR}/wordpress

SUBST_VARS =	INSTDIR

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/wordpress
	cd ${WRKSRC} && pax -rw * ${PREFIX}/wordpress

.include <bsd.port.mk>
