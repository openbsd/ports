COMMENT=	pytest plugin for aiohttp

MODPY_DISTV=	1.1.0
DISTNAME=	pytest_aiohttp-${MODPY_DISTV}
PKGNAME=	py-test-aiohttp-${MODPY_DISTV}
CATEGORIES=	devel

HOMEPAGE=	https://github.com/aio-libs/pytest-aiohttp

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}

RUN_DEPENDS=	devel/py-test \
		devel/py-test-asyncio \
		www/py-aiohttp

.include <bsd.port.mk>
