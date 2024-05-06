COMMENT=	manage callbacks in asyncio projects

MODPY_EGG_VERSION=	1.3.1

DISTNAME=	aiosignal-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

# https://github.com/aio-libs/aiosignal
HOMEPAGE=	https://aiosignal.readthedocs.io/

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	devel/py-frozenlist${MODPY_FLAVOR}
TEST_DEPENDS=	devel/py-test-asyncio${MODPY_FLAVOR}

.include <bsd.port.mk>
