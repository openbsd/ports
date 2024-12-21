COMMENT =		automatically mock HTTP interactions to speed testing

MODPY_DISTV =	6.0.2
DISTNAME =		vcrpy-${MODPY_DISTV}
PKGNAME =		py-vcrpy-${MODPY_DISTV}
REVISION =		0

CATEGORIES =		www

HOMEPAGE =		https://github.com/kevin1024/vcrpy

MAINTAINER =		Pamela Mosiejczuk <pamela@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes

RUN_DEPENDS =		devel/py-wrapt \
			textproc/py-yaml \
			www/py-urllib3 \
			www/py-yarl

# these fail with ssl errors
MODPY_PYTEST_ARGS =	-k 'not https'

TEST_DEPENDS =		devel/py-mock \
			devel/py-test-aiohttp \
			devel/py-test-asyncio \
			devel/py-test-cov \
			devel/py-test-httpbin \
			net/py-boto3 \
			www/py-aiohttp \
			www/py-httplib2 \
			www/py-httpx \
			www/py-requests \
			www/py-tornado

.include <bsd.port.mk>
