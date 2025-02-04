COMMENT=	lightweight pipelining: using Python functions as pipeline

MODPY_DISTV=	1.4.2
DISTNAME=	joblib-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	sysutils

# https://github.com/joblib/joblib
HOMEPAGE=	https://joblib.readthedocs.io

# BSD-3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes
# somehow hits a SIGILL in test_thread_bomb_mitigation[threading-parallel_config]
MODPY_PYTEST_ARGS= -v \
		   -k 'not test_thread_bomb_mitigation'

TEST_DEPENDS=	devel/py-test-cov \
		math/py-numpy

.include <bsd.port.mk>
