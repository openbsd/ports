# $OpenBSD: Makefile,v 1.17 2020/04/19 08:13:18 landry Exp $

COMMENT =	Andrews web libraries for PHP

DISTNAME =	awl_0.61.orig
PKGNAME =	php-awl-0.61
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	www
PKG_ARCH =	*

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
