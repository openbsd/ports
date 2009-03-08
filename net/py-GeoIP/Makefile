# $OpenBSD: Makefile,v 1.1.1.1 2009/03/08 12:55:58 steven Exp $

COMMENT =		GeoIP Python API

MODPY_EGG_VERSION =	1.2.4
DISTNAME =		GeoIP-Python-${MODPY_EGG_VERSION}
PKGNAME =		py-GeoIP-${MODPY_EGG_VERSION}
CATEGORIES =		net

HOMEPAGE =		http://www.maxmind.com/app/python

MAINTAINER =		Benoit Lecocq <blq@arcane-labs.net>

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://geolite.maxmind.com/download/geoip/api/python/

MODULES =		lang/python

LIB_DEPENDS =		GeoIP.>=7::net/GeoIP

EXAMPLEDIR =		${PREFIX}/share/examples/py-GeoIP
NO_REGRESS =		Yes

pre-build:
	@perl -pi -e "s,^\#\!/usr/bin/python,#!${MODPY_BIN}," ${WRKSRC}/test*.py
                        
post-install:
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/test* ${EXAMPLEDIR}

.include <bsd.port.mk>
