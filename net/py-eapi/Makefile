COMMENT=	Python client for Arista eAPI

MODPY_DISTV=	1.0.2
DISTNAME=	pyeapi-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/py//}
REVISION=	0

CATEGORIES=	net

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS=	test/unit

RUN_DEPENDS=	net/py-netaddr
TEST_DEPENDS=	devel/py-mock

.include <bsd.port.mk>
