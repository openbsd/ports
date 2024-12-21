COMMENT =	Pythonic task execution

MODPY_DISTV =	1.7.3

DISTNAME =	invoke-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	1

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
#TEST_DEPENDS =	devel/py-test-relaxed \
#		devel/py-mock

.include <bsd.port.mk>
