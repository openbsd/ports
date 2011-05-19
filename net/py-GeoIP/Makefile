# $OpenBSD: Makefile,v 1.8 2011/05/19 21:15:32 sthen Exp $

COMMENT =		GeoIP Python API

MODPY_EGG_VERSION =	1.2.5
REVISION =		0
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

LIB_DEPENDS =		net/GeoIP>=1.4.7
WANTLIB =		GeoIP>=8

EXAMPLEDIR =		${PREFIX}/share/examples/py-GeoIP
NO_REGRESS =		Yes

pre-build:
	@perl -pi -e "s,^\#\!/usr/bin/python,#!${MODPY_BIN}," ${WRKSRC}/test*.py
                        
post-install:
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/test* ${EXAMPLEDIR}

.include <bsd.port.mk>
