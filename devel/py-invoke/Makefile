COMMENT =	Pythonic task execution

MODPY_EGG_VERSION =	1.7.3

DISTNAME =	invoke-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	https://www.pyinvoke.org/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools
# requires https://pypi.org/project/invocations/
NO_TEST =	Yes

# some failures, possibly related to running under ports test framework
# with captured stdio etc.
#TEST_DEPENDS =	devel/py-test-relaxed${MODPY_FLAVOR} \
#		devel/py-mock${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>
