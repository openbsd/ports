COMMENT=	pytest plugin to run tests concurrently

MODPY_DISTV=	0.7.0
DISTNAME=	pytest_run_parallel-${MODPY_DISTV}
PKGNAME=	${DISTNAME:S/py/py-/:S/_/-/g}
CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-test \
		sysutils/py-psutil

TEST_DEPENDS =	devel/py-test-order \
		devel/py-test-cov \
		devel/py-hypothesis

.include <bsd.port.mk>
