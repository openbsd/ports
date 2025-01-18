COMMENT=	manage callbacks in asyncio projects

MODPY_DISTV=	1.3.2
DISTNAME=	aiosignal-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# https://github.com/aio-libs/aiosignal
HOMEPAGE=	https://aiosignal.readthedocs.io/

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-frozenlist
TEST_DEPENDS=	devel/py-test-asyncio

.include <bsd.port.mk>
