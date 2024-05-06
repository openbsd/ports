COMMENT =	code coverage measurement for Python

MODPY_EGG_VERSION =	7.0.5
DISTNAME =	coverage-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel

# https://github.com/nedbat/coveragepy
HOMEPAGE =	https://coverage.readthedocs.io/en/stable/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =	${MODPY_WANTLIB} pthread

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

FLAVORS =	python3
FLAVOR =	python3

# tests want a writable directory on the python path that already
# contains a .pth file; making /usr/local/lib/python3.9/site-packages
# writable by _pbuild will get some tests to run successfully
NO_TEST =	Yes
#TEST_DEPENDS =	devel/py-test-xdist${MODPY_FLAVOR}

.include <bsd.port.mk>
