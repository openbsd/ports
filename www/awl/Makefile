# $OpenBSD: Makefile,v 1.4 2013/03/11 11:44:41 espie Exp $

COMMENT =	Andrew's web libraries for PHP

DISTNAME =	awl-0.53
PKGNAME =	php-${DISTNAME}
CATEGORIES =	www
PKG_ARCH =	*

HOMEPAGE =	http://andrew.mcmillan.net.nz/projects/awl

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://debian.mcmillan.net.nz/packages/awl/

PREFIX =	/var/www
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
