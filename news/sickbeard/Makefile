# $OpenBSD: Makefile,v 1.1.1.1 2012/06/27 08:15:46 mglocker Exp $

COMMENT =			search for TV serie nzb-files via web interface
# alpha version
VERSION =			0.0.1
DISTNAME =			midgetspy-Sick-Beard-b3a7afe
PKGNAME =			sickbeard-${VERSION}
CATEGORIES =			news
HOMEPAGE =			http://sickbeard.com/
MAINTAINER =			Marcus Glocker <marcus@nazgul.ch>

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES = 			http://www.nazgul.ch/pub/

MODULES =			lang/python

BUILD_DEPENDS =			${_MODPY_BUILD_DEPENDS}
RUN_DEPENDS =			news/sabnzbd

NO_BUILD =			Yes
NO_REGRESS =			Yes
PKG_ARCH =			*

WRKSRC =			${WRKDIR}/midgetspy-Sick-Beard-b3a7afe

do-install:
	${INSTALL_DATA_DIR} \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/sickbeard
	cp -Rp ${WRKSRC}/* \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/sickbeard
	${SUBST_CMD} -c ${FILESDIR}/sickbeard ${WRKSRC}/sickbeard/sickbeard
	${INSTALL_SCRIPT} ${WRKSRC}/sickbeard/sickbeard ${PREFIX}/bin/sickbeard
	chown -R ${BINOWN}:${BINGRP} \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/sickbeard

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/sickbeard

.include <bsd.port.mk>
