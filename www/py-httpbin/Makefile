COMMENT =		HTTP request and response service

MODPY_EGG_VERSION =	0.7.0
DISTNAME =		httpbin-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		www

HOMEPAGE =		https://github.com/postmanlabs/httpbin

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
#MODPY_PYTEST_ARGS =	test_httpbin.py

RUN_DEPENDS =		www/py-flask${MODPY_FLAVOR} \
			textproc/py-MarkupSafe${MODPY_FLAVOR} \
			devel/py-decorator${MODPY_FLAVOR} \
			www/py-itsdangerous${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			archivers/py-brotli${MODPY_FLAVOR} \
			www/py-werkzeug${MODPY_FLAVOR}
# also wanted "raven" but it's only used for sending app errors to a
# web service, and does nothing unless SENTRY_DSN is set in the environment,
# so that is patched away for now

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
