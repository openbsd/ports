# $OpenBSD: Makefile,v 1.14 2014/11/06 17:13:41 sthen Exp $

COMMENT =	php5 WebDAV server
DISTNAME =	SabreDAV-1.8.7
PKGNAME =	${DISTNAME:L}
PKG_ARCH =	*
EXTRACT_SUFX =	.zip
CATEGORIES =	www
REVISION =	0

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
