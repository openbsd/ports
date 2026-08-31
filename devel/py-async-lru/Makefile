COMMENT=	simple LRU cache for asyncio

MODPY_DISTV=	2.2.0
DISTNAME=	async_lru-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/_/-/}
REVISION=	1

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

TEST_DEPENDS=	devel/py-test-asyncio \
		devel/py-test-cov \
		devel/py-test-timeout

.include <bsd.port.mk>
