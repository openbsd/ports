# $OpenBSD: Makefile,v 1.7 2021/02/19 23:13:08 sthen Exp $

COMMENT =		pure-Python WSGI server

MODPY_EGG_VERSION =	1.4.4
DISTNAME =		waitress-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		www

# ZPL 2.1
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

BUILD_DEPENDS =		textproc/py-sphinx,python3

TEST_ENV +=		PYTHONPATH=${WRKSRC}/src/

post-install:
	mv ${PREFIX}/bin/waitress-serve{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
