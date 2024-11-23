COMMENT=	pytest plugin for aiohttp

MODPY_EGG_VERSION=	1.0.5
DISTNAME=	pytest-aiohttp-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/py/py-/}
CATEGORIES=	devel

HOMEPAGE=	https://github.com/aio-libs/pytest-aiohttp

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

FLAVORS=	python3
FLAVOR=		python3

TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}

RUN_DEPENDS=	devel/py-test${MODPY_FLAVOR} \
		devel/py-test-asyncio${MODPY_FLAVOR} \
		www/py-aiohttp${MODPY_FLAVOR}

.include <bsd.port.mk>
