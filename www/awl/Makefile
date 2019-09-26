# $OpenBSD: Makefile,v 1.16 2019/09/26 21:59:30 sthen Exp $

COMMENT =	Andrews web libraries for PHP

DISTNAME =	awl_0.59.orig
PKGNAME =	php-awl-0.59
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	www
PKG_ARCH =	*
REVISION =	1

# GPLv2+
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://www.davical.org/downloads/

WRKSRC =	${WRKDIR}
PREFIX =	${VARBASE}/www
INSTDIR =	${PREFIX}/awl
SUBST_VARS =	INSTDIR
NO_BUILD =	Yes
NO_TEST =	Yes
MODULES =	lang/php

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cp -Rp ${WRKSRC}/{README,dba,docs,inc} ${INSTDIR}
	rm ${INSTDIR}/inc/AWLUtilities.php.in
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
