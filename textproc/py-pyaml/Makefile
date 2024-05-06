COMMENT =		module to produce pretty and readable YAML

MODPY_EGG_VERSION =	23.5.9

DISTNAME =		pyaml-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/mk-fg/pretty-yaml

# WTFPL
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	pyaml/tests

FLAVORS =		python3
FLAVOR =		python3

TEST_DEPENDS =		textproc/py-unidecode${MODPY_FLAVOR}

.include <bsd.port.mk>
