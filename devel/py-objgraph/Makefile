COMMENT =		draw Python object reference graphs

MODPY_DISTV =	3.6.2
DISTNAME =		objgraph-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://mg.pov.lt/objgraph/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	tests.py

RUN_DEPENDS =		math/py-graphviz
TEST_DEPENDS =		devel/py-mock \
			math/graphviz

.include <bsd.port.mk>
