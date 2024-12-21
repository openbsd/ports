COMMENT =	HTTP client mock for Python

MODPY_DISTV =	1.1.4

DISTNAME =	httpretty-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	3

CATEGORIES =	www

HOMEPAGE =	https://httpretty.readthedocs.io/en/latest/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

# need https, eventlet - not ported
# test_{bypass,debug,requests} are known broken
# https://github.com/gabrielfalcao/HTTPretty/issues/449
MODPY_PYTEST_ARGS =	--ignore tests/bugfixes/nosetests/test_414_httpx.py \
			--ignore tests/bugfixes/nosetests/test_eventlet.py \
			--ignore tests/functional/test_httplib2.py

TEST_DEPENDS =		devel/py-freezegun \
			devel/py-sure \
			net/py-boto3 \
			www/py-httplib2 \
			www/py-requests \
			www/py-tornado

FIX_EXTRACT_PERMISSIONS =	Yes

.include <bsd.port.mk>
