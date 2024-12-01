COMMENT =		automatically mock HTTP interactions to speed testing

MODPY_EGG_VERSION =	6.0.2
DISTNAME =		vcrpy-${MODPY_EGG_VERSION}
PKGNAME =		py-vcrpy-${MODPY_EGG_VERSION}

CATEGORIES =		www

HOMEPAGE =		https://github.com/kevin1024/vcrpy

MAINTAINER =		Pamela Mosiejczuk <pamela@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		devel/py-wrapt${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			www/py-urllib3${MODPY_FLAVOR} \
			www/py-yarl${MODPY_FLAVOR}

# these fail with ssl errors
MODPY_PYTEST_ARGS =	-k 'not https'

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			devel/py-test-aiohttp${MODPY_FLAVOR} \
			devel/py-test-asyncio${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-test-httpbin${MODPY_FLAVOR} \
			net/py-boto3${MODPY_FLAVOR} \
			www/py-aiohttp${MODPY_FLAVOR} \
			www/py-httplib2${MODPY_FLAVOR} \
			www/py-httpx${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			www/py-tornado${MODPY_FLAVOR}

.include <bsd.port.mk>
