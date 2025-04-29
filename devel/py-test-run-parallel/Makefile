COMMENT=	pytest plugin to run tests concurrently

MODPY_DISTV=	0.4.0
DISTNAME=	pytest_run_parallel-${MODPY_DISTV}
PKGNAME=	${DISTNAME:S/py/py-/:S/_/-/g}
CATEGORIES=	devel
REVISION=	0

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

RUN_DEPENDS=	devel/py-test \
		sysutils/py-psutil

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

TEST_DEPENDS =	devel/py-test-order \
		devel/py-test-cov \
		devel/py-hypothesis

.include <bsd.port.mk>
