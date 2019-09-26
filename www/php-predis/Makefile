# $OpenBSD: Makefile,v 1.33 2019/09/26 21:59:31 sthen Exp $

COMMENT =		PHP client library for the Redis key-value database

DISTNAME =		Predis-1.1.1
PKGNAME =		${DISTNAME:S/^P/php-p/}
REVISION =		3
CATEGORIES =		www databases

HOMEPAGE =		http://wiki.github.com/nrk/predis

# MIT
PERMIT_PACKAGE =	Yes

MASTER_SITES =		http://pear.nrk.io/get/
EXTRACT_SUFX =		.tgz

MODULES =		lang/php

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

PREFIX =	${VARBASE}/www
INSTDIR =		${PREFIX}/pear/lib/
SUBST_VARS =		INSTDIR

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}Predis
	cp -Rp ${WRKSRC}/src/* ${INSTDIR}Predis/
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
