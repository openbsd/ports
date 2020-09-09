# $OpenBSD: Makefile,v 1.6 2020/09/09 18:49:39 kmos Exp $

COMMENT =		pure-Python WSGI server

MODPY_EGG_VERSION =	1.4.4
DISTNAME =		waitress-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

# ZPL 2.1
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

BUILD_DEPENDS =		textproc/py-sphinx

TEST_ENV +=		PYTHONPATH=${WRKSRC}/src/

post-install:
	mv ${PREFIX}/bin/waitress-serve{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
