COMMENT=	Pythonic task execution

MODPY_DISTV=	3.0.3
DISTNAME=	invoke-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://www.pyinvoke.org/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

MODPY_PYTEST_ARGS= tests

# failures in tests/runners.py possibly related to running under ports test
# framework with captured stdio etc.  some tests skipped as "invocations"
# not ported.
TEST_DEPENDS=	devel/py-test-relaxed \
		devel/py-test-cov \
		textproc/py-icecream

.include <bsd.port.mk>
