# $OpenBSD: Makefile,v 1.3 2019/04/28 20:52:01 sthen Exp $

COMMENT =		pure-Python WSGI server

MODPY_EGG_VERSION =	1.1.0
DISTNAME =		waitress-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		www

# ZPL 2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

BUILD_DEPENDS =		textproc/py-sphinx

post-install:
	mv ${PREFIX}/bin/waitress-serve{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
