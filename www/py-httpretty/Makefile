COMMENT =	HTTP client mock for Python

MODPY_EGG_VERSION =	1.1.4

DISTNAME =	httpretty-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	2

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

FLAVOR =		python3
FLAVORS =		python3

TEST_DEPENDS =		devel/py-freezegun${MODPY_FLAVOR} \
			devel/py-sure${MODPY_FLAVOR} \
			net/py-boto3${MODPY_FLAVOR} \
			www/py-httplib2${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			www/py-tornado${MODPY_FLAVOR}

FIX_EXTRACT_PERMISSIONS =	Yes

.include <bsd.port.mk>
