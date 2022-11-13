COMMENT =		reference implementation for Python's "wheel" package format

MODPY_EGG_VERSION =	0.38.4
DISTNAME =		wheel-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYTEST_ARGS =	--ignore tests/test_macosx_libfile.py
FLAVORS =		python3
FLAVOR =		python3

# this is used by py-build, don't set MODPY_PYBUILD (circular dep)
MODPY_SETUPTOOLS =	Yes

# avoid RDEP on setuptools
MODPY_RUNDEP =		No
RUN_DEPENDS =		lang/python/${MODPY_VERSION}

TEST_DEPENDS =		devel/py-coverage${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR}

.include <bsd.port.mk>
