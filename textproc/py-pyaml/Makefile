# $OpenBSD: Makefile,v 1.4 2021/05/21 19:50:37 kmos Exp $

COMMENT =		module to produce pretty and readable YAML

MODPY_EGG_VERSION =	19.4.1
REVISION =		2

DISTNAME =		pyaml-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/mk-fg/pretty-yaml

# WTFPL
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	pyaml/tests/dump.py

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		textproc/py-unidecode${MODPY_FLAVOR}

.include <bsd.port.mk>
