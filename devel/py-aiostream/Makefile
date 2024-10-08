COMMENT=	generator-based operators for asynchronous iteration

MODPY_EGG_VERSION=	0.6.2
DISTNAME=	aiostream-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVOR=		python3
FLAVORS=	python3

RUN_DEPENDS=	devel/py-typing-extensions${MODPY_FLAVOR}

TEST_DEPENDS=	devel/py-test-asyncio${MODPY_FLAVOR} \
		devel/py-test-cov${MODPY_FLAVOR}

.include <bsd.port.mk>
