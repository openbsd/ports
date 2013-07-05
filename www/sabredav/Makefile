# $OpenBSD: Makefile,v 1.9 2013/07/05 09:34:36 jasper Exp $

COMMENT =	php5 WebDAV server
DISTNAME =	Sabre_DAV-1.0.0
REVISION =	4
PKGNAME =	${DISTNAME:L:S/_//}
PKG_ARCH =	*
EXTRACT_SUFX =	.tgz
CATEGORIES =	www

HOMEPAGE =	http://code.google.com/p/sabredav/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://sabredav.googlecode.com/files/

# phpunit
NO_TEST =		Yes
NO_BUILD =		Yes

PREFIX =	${VARBASE}/www
INSTDIR =	${PREFIX}/sabredav
SUBST_VARS =	INSTDIR

MODULES =	lang/php

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cp -Rp ${WRKSRC}/{lib,examples} ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
