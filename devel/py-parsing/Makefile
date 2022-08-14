COMMENT =		Python parsing module

MODPY_EGG_VERSION =	3.0.9
DISTNAME =		pyparsing-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel

HOMEPAGE =		http://pyparsing.wikispaces.com/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR =		python3

# test_diagram needs railroad
MODPY_PYTEST_ARGS =	--ignore tests/test_diagram.py tests

MODPY_PEP517 =		flit_core

.include <bsd.port.mk>
