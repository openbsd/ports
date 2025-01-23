COMMENT=	Python WSGI HTTP server

MODPY_DISTV=	23.0.0
DISTNAME=	gunicorn-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	www

# https://github.com/benoitc/gunicorn
HOMEPAGE=	https://gunicorn.org/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	www/py-multidict \
		www/py-aiohttp

TEST_DEPENDS=	devel/py-coverage \
		devel/py-gevent \
		devel/py-test-cov

.include <bsd.port.mk>
