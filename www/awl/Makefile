# $OpenBSD: Makefile,v 1.3 2012/11/11 20:49:21 landry Exp $

COMMENT =	Andrew's web libraries for PHP

DISTNAME =	awl-0.53
PKGNAME =	php-${DISTNAME}
CATEGORIES =	www
PKG_ARCH =	*

HOMEPAGE =	http://andrew.mcmillan.net.nz/projects/awl

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://debian.mcmillan.net.nz/packages/awl/

PREFIX =	/var/www
INSTDIR =	${PREFIX}/awl
SUBST_VARS =	INSTDIR
NO_BUILD =	Yes
NO_REGRESS =	Yes
MODULES =	lang/php

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cp -Rp ${WRKSRC}/{README,dba,docs,inc} ${INSTDIR}
	rm ${INSTDIR}/inc/AWLUtilities.php.in
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
