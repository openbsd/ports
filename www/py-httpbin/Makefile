COMMENT=	HTTP request and response service

MODPY_DISTV=	0.10.4
DISTNAME=	httpbin-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	www

HOMEPAGE=	https://github.com/psf/httpbin

# MIT, ISC
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	archivers/py-brotlicffi \
		devel/py-decorator \
		www/py-flask \
		devel/py-greenlet \
		devel/py-six \
		www/py-werkzeug

# [mainapp]
RUN_DEPENDS +=	www/py-flasgger \
		www/py-gunicorn \
		devel/py-gevent

.include <bsd.port.mk>
