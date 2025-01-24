COMMENT=	mock out HTTPX and HTTP Core for tests

MODPY_DISTV=	0.22.0
DISTNAME=	respx-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	www

# https://github.com/lundberg/respx
HOMEPAGE=	https://lundberg.github.io/respx/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	www/py-httpx

NO_TEST=	Yes

.include <bsd.port.mk>
