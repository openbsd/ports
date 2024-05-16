COMMENT=	Python client for Arista eAPI

MODPY_EGG_VERSION=	1.0.2
DISTNAME=	pyeapi-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME:S/py//}

CATEGORIES=	net

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS=	test/unit

RUN_DEPENDS=	net/py-netaddr${MODPY_FLAVOR}
TEST_DEPENDS=	devel/py-mock${MODPY_FLAVOR}

.include <bsd.port.mk>
