COMMENT=	mock out requests made by ClientSession from aiohttp

MODPY_DISTV=	0.7.7
DISTNAME=	aioresponses-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	pbr

RUN_DEPENDS=	sysutils/py-packaging \
		www/py-aiohttp
TEST_DEPENDS=	devel/py-test-cov \
		devel/py-ddt

.include <bsd.port.mk>
