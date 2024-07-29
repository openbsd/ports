COMMENT =		draw Python object reference graphs

MODPY_EGG_VERSION =	3.6.1
DISTNAME =		objgraph-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://mg.pov.lt/objgraph/

# MIT
PERMIT_PACKAGE =	Yes

FLAVORS =		python3
FLAVOR =		python3

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	tests.py

RUN_DEPENDS =		math/py-graphviz${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			math/graphviz

.include <bsd.port.mk>
