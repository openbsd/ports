COMMENT=	mock out HTTPX and HTTP Core for tests

MODPY_DISTV=	0.23.1
GH_ACCOUNT=	lundberg
GH_PROJECT=	respx
GH_TAGNAME=	${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	www

# https://github.com/lundberg/respx
HOMEPAGE=	https://lundberg.github.io/respx/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	www/py-httpx
TEST_DEPENDS=	devel/py-test-cov \
		devel/py-test-asyncio \
		www/py-starlette \
		devel/py-trio

.include <bsd.port.mk>
