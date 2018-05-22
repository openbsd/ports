# $OpenBSD: Makefile,v 1.18 2018/05/22 08:18:09 sthen Exp $

V =		1.8.7
COMMENT =	php5 WebDAV server
DISTNAME =	SabreDAV-$V
PKGNAME =	${DISTNAME:L}
PKG_ARCH =	*
EXTRACT_SUFX =	.zip
CATEGORIES =	www
REVISION =	3

HOMEPAGE =	http://sabre.io/dav/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://github.com/sabre-io/dav/releases/download/$V/

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
