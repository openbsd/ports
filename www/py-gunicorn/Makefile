COMMENT =		Python WSGI HTTP server

MODPY_DISTV =	20.0.4
DISTNAME =		gunicorn-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		www
REVISION =		6

HOMEPAGE =		https://gunicorn.org/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		www/py-multidict \
			www/py-aiohttp

TEST_DEPENDS =		devel/py-coverage \
			devel/py-test \
			devel/py-test-cov \
			${BASE_PKGPATH}=${MODPY_DISTV}

.include <bsd.port.mk>
