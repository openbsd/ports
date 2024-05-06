COMMENT =		Python WSGI HTTP server

MODPY_EGG_VERSION =	20.0.4
DISTNAME =		gunicorn-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		www
REVISION =		5

HOMEPAGE =		https://gunicorn.org/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		www/py-multidict${MODPY_FLAVOR} \
			www/py-aiohttp${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-coverage${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			${BASE_PKGPATH}=${MODPY_EGG_VERSION}

.include <bsd.port.mk>
