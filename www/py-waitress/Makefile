# $OpenBSD: Makefile,v 1.5 2020/07/03 21:13:21 sthen Exp $

COMMENT =		pure-Python WSGI server

MODPY_EGG_VERSION =	1.1.0
DISTNAME =		waitress-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		www

# ZPL 2.1
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

BUILD_DEPENDS =		textproc/py-sphinx

post-install:
	mv ${PREFIX}/bin/waitress-serve{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
