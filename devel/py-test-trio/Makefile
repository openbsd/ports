COMMENT=	pytest plugin for trio

MODPY_DISTV=	0.8.0
DISTNAME=	pytest-trio-${MODPY_DISTV}
PKGNAME=	py-test-trio-${MODPY_DISTV}
CATEGORIES=	devel

# either MIT or Apache 2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-trio \
		devel/py-outcome

TEST_DEPENDS=	devel/py-test-cov \
		devel/py-hypothesis

MODPY_PYTEST_ARGS= --pyargs pytest_trio

.include <bsd.port.mk>
