COMMENT =		versioning library for Python projects

MODPY_EGG_VERSION =	22.10.0

DISTNAME =		incremental-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	src/incremental

TEST_DEPENDS =		devel/py-click${MODPY_FLAVOR} \
			devel/py-twisted${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
