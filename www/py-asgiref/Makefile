COMMENT=	ASGI specification and utilities

MODPY_DISTV=	3.11.0
DISTNAME=	asgiref-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	www

HOMEPAGE=	https://github.com/django/asgiref

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

TEST_DEPENDS=	devel/py-mypy \
		devel/py-test-asyncio

.include <bsd.port.mk>
