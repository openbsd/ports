COMMENT =		python helper for Semantic Versioning

MODPY_EGG_VERSION =	2.13.0
DISTNAME =		semver-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		3

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/k-bx/python-semver

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes
MODPY_PYTEST_ARGS =	test_semver.py

TEST_DEPENDS =		devel/py-test-cov${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>
