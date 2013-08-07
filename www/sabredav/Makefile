# $OpenBSD: Makefile,v 1.10 2013/08/07 21:32:56 naddy Exp $

COMMENT =	php5 WebDAV server
DISTNAME =	Sabre_DAV-1.0.0
REVISION =	5
PKGNAME =	${DISTNAME:L:S/_//}
PKG_ARCH =	*
EXTRACT_SUFX =	.tgz
CATEGORIES =	www

HOMEPAGE =	https://code.google.com/p/sabredav/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://sabredav.googlecode.com/files/

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
