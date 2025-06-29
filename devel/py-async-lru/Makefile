COMMENT=	simple LRU cache for asyncio

MODPY_DISTV=	2.0.4
DISTNAME=	async-lru-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	2

CATEGORIES=	devel

MAINTAINER=	Daniel Dickman <daniel@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

TEST_DEPENDS=	devel/py-test-asyncio \
		devel/py-test-cov \
		devel/py-test-timeout

.include <bsd.port.mk>
