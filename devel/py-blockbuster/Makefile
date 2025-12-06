COMMENT=	detect blocking calls in the async event loop

MODPY_DISTV =	1.5.26
DISTNAME=	blockbuster-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/cbornet/blockbuster

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatchling
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-forbiddenfruit
TEST_DEPENDS=	devel/py-test-asyncio

.include <bsd.port.mk>
