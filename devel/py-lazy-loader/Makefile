COMMENT =		load subpackages and functions on demand

MODPY_EGG_VERSION =	0.4
DISTNAME =		lazy_loader-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:S/_/-/}

CATEGORIES =		devel

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

TEST_DEPENDS =		devel/py-test-cov${MODPY_FLAVOR}

.include <bsd.port.mk>
