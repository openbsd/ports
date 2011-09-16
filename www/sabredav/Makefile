# $OpenBSD: Makefile,v 1.4 2011/09/16 12:00:09 espie Exp $

COMMENT =	php5 WebDAV server
DISTNAME =	Sabre_DAV-1.0.0
REVISION =	1
PKGNAME =	${DISTNAME:L:S/_//}
EXTRACT_SUFX =	.tgz
CATEGORIES =	www

HOMEPAGE =	http://code.google.com/p/sabredav/

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://sabredav.googlecode.com/files/

# phpunit
NO_REGRESS =		Yes
NO_BUILD =		Yes

PREFIX =	/var/www
INSTDIR =	${PREFIX}/sabredav
SUBST_VARS =	INSTDIR

MODULES =	lang/php

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cp -Rp ${WRKSRC}/{lib,examples} ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
