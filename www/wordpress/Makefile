# $OpenBSD: Makefile,v 1.58 2014/11/06 17:13:41 sthen Exp $

COMMENT =	standard compliant weblog

DISTNAME =	wordpress-4.0
CATEGORIES =	www
REVISION =	0

HOMEPAGE =	http://wordpress.org/
MAINTAINER =	Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE}

MODULES =	lang/php

RUN_DEPENDS =	lang/php/${MODPHP_VERSION},-mysql

NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*

PREFIX =	${VARBASE}/www
INSTDIR =	${PREFIX}/wordpress
WRKDIST =	${WRKDIR}/wordpress

SUBST_VARS =	INSTDIR

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/wordpress
	cd ${WRKSRC} && pax -rw * ${PREFIX}/wordpress

.include <bsd.port.mk>
