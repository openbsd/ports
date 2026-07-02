COMMENT=	pytest plugin to run tests in customized order

MODPY_DISTV=	1.5.0
DISTNAME=	pytest_order-${MODPY_DISTV}
PKGNAME=	py-test-order-${MODPY_DISTV}
CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-test
TEST_DEPENDS=	devel/py-test-mock \
		devel/py-test-xdist

.include <bsd.port.mk>
