COMMENT=	mock out requests made by ClientSession from aiohttp

MODPY_EGG_VERSION=	0.7.6
DISTNAME=	aioresponses-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVOR=		python3
FLAVORS=	python3

BUILD_DEPENDS=	devel/py-pbr${MODPY_FLAVOR}
RUN_DEPENDS=	www/py-aiohttp${MODPY_FLAVOR}
TEST_DEPENDS=	devel/py-test-cov${MODPY_FLAVOR} \
		devel/py-ddt${MODPY_FLAVOR}

.include <bsd.port.mk>
