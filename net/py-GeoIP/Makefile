# $OpenBSD: Makefile,v 1.11 2011/09/16 11:13:39 espie Exp $

COMMENT =		GeoIP Python API

MODPY_EGG_VERSION =	1.2.5
REVISION =		3
DISTNAME =		GeoIP-Python-${MODPY_EGG_VERSION}
PKGNAME =		py-GeoIP-${MODPY_EGG_VERSION}
CATEGORIES =		net

HOMEPAGE =		http://www.maxmind.com/app/python

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://geolite.maxmind.com/download/geoip/api/python/

MODULES =		lang/python
MODPY_ADJ_FILES =	test*.py

LIB_DEPENDS =		net/GeoIP>=1.4.7
WANTLIB =		GeoIP>=8

EXAMPLEDIR =		${PREFIX}/share/examples/py-GeoIP
NO_REGRESS =		Yes

                       
post-install:
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/test* ${EXAMPLEDIR}

.include <bsd.port.mk>
