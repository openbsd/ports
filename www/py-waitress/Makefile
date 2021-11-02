# $OpenBSD: Makefile,v 1.10 2021/11/02 00:02:56 sthen Exp $

COMMENT =		pure-Python WSGI server

MODPY_EGG_VERSION =	1.4.4
DISTNAME =		waitress-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		3

CATEGORIES =		www

# ZPL 2.1
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		textproc/py-sphinx,python3

TEST_ENV +=		PYTHONPATH=${WRKSRC}/src/

.include <bsd.port.mk>
