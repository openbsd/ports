# $OpenBSD: Makefile,v 1.7 2014/11/06 17:13:40 sthen Exp $

COMMENT =	Andrew's web libraries for PHP

DISTNAME =	awl-0.53
PKGNAME =	php-${DISTNAME}
CATEGORIES =	www
PKG_ARCH =	*
REVISION =	1

HOMEPAGE =	http://andrew.mcmillan.net.nz/projects/awl

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://debian.mcmillan.net.nz/packages/awl/

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
