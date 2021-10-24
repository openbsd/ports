# $OpenBSD: Makefile,v 1.8 2021/10/24 09:28:51 sthen Exp $

COMMENT =		character encoding aliases for legacy web content

MODPY_EGG_VERSION =	0.5.1
DISTNAME =		webencodings-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		textproc
REVISION =		4

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	webencodings/tests.py

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
