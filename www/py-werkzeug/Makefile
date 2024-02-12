COMMENT =		WSGI utility collection

MODPY_EGG_VERSION =	2.1.2
DISTNAME =		Werkzeug-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
EPOCH =			0

CATEGORIES =		www devel

HOMEPAGE =		https://palletsprojects.com/p/werkzeug/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes
# verbose for now, it has been seen hanging at times
MODPY_PYTEST_ARGS =	-v

TEST_DEPENDS =		devel/py-test-xprocess${MODPY_FLAVOR} \
			devel/py-test-timeout${MODPY_FLAVOR} \
			net/py-ephemeral_port_reserve${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
