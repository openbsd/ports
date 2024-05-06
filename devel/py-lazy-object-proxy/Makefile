COMMENT =		fast and thorough lazy object proxy

MODPY_EGG_VERSION =	1.7.1
DISTNAME =		lazy-object-proxy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		1

HOMEPAGE =		https://python-lazy-object-proxy.readthedocs.org

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES =		lang/python

FLAVORS =		python3
FLAVOR  =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm
MODPY_PYTEST_ARGS =	--ignore=src

TEST_DEPENDS =		devel/py-test-benchmark${MODPY_FLAVOR}

.include <bsd.port.mk>
