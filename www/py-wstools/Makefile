COMMENT=	WSDL parsing services package for Python

MODPY_EGG_VERSION=	0.4.8
DISTNAME=	wstools-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	www
REVISION=	7

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

BUILD_DEPENDS=	devel/py-pbr${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR} \
		devel/py-test-runner${MODPY_FLAVOR}
RUN_DEPENDS=	devel/py-pbr${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR}
TEST_DEPENDS=	devel/py-test-runner${MODPY_FLAVOR}

.include <bsd.port.mk>
