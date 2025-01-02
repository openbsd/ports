COMMENT=	simple LRU cache for asyncio

MODPY_DISTV=	2.0.4
DISTNAME=	async-lru-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

TEST_DEPENDS=	devel/py-test-asyncio \
		devel/py-test-cov \
		devel/py-test-timeout

.include <bsd.port.mk>
