COMMENT=	HTTP request and response service

MODPY_DISTV=	0.10.2
DISTNAME=	httpbin-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	www

HOMEPAGE=	https://github.com/psf/httpbin

# MIT, ISC
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	archivers/py-brotli \
		devel/py-decorator \
		devel/py-gevent \
		devel/py-six \
		textproc/py-MarkupSafe \
		www/py-flasgger \
		www/py-flask \
		www/py-itsdangerous \
		www/py-jinja2 \
		www/py-werkzeug
# also wanted "raven" but it's only used for sending app errors to a
# web service, and does nothing unless SENTRY_DSN is set in the environment,
# so that is patched away for now

.include <bsd.port.mk>
