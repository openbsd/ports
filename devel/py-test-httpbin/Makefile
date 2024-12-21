COMMENT =		test your HTTP library against a local copy of httpbin

MODPY_DISTV =	1.0.2
DISTNAME =		pytest-httpbin-${MODPY_DISTV}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel
REVISION =		3

HOMEPAGE =		https://github.com/kevin1024/pytest-httpbin

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-six \
			devel/py-test \
			www/py-httpbin
TEST_DEPENDS =		www/py-requests

.include <bsd.port.mk>
