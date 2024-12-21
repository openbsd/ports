COMMENT =		use requests to talk HTTP via a UNIX domain socket

MODPY_DISTV =	0.3.0
DISTNAME =		requests-unixsocket-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		3

CATEGORIES =		www

# Apache-2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	requests_unixsocket/tests

BUILD_DEPENDS =		devel/py-pbr
RUN_DEPENDS =		www/py-requests>=1.1 \
			www/py-urllib3>=1.8
TEST_DEPENDS =		devel/py-apipkg \
			devel/py-appdirs \
			devel/py-execnet \
			devel/py-parsing \
			devel/py-py \
			sysutils/py-packaging \
			www/py-waitress

.include <bsd.port.mk>
