# $OpenBSD: Makefile,v 1.12 2013/08/12 04:11:22 robert Exp $

COMMENT =	php5 WebDAV server
DISTNAME =	SabreDAV-1.8.6
PKGNAME =	${DISTNAME:L}
REVISION =	0
PKG_ARCH =	*
EXTRACT_SUFX =	.zip
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
WRKDIST =	${WRKDIR}/SabreDAV
SUBST_VARS =	INSTDIR

MODULES =	lang/php

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cp -Rp ${WRKSRC}/{lib,examples} ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
