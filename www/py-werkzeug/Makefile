COMMENT =		WSGI utility collection

MODPY_EGG_VERSION =	2.3.8
DISTNAME =		werkzeug-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
EPOCH =			0

CATEGORIES =		www devel

HOMEPAGE =		https://palletsprojects.com/p/werkzeug/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PYBUILD =		flit_core
MODPY_PI =		Yes
# verbose for now, it has been seen hanging at times
MODPY_PYTEST_ARGS =	-v

RUN_DEPENDS =		textproc/py-MarkupSafe${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-greenlet${MODPY_FLAVOR} \
			devel/py-test-timeout${MODPY_FLAVOR} \
			devel/py-test-xprocess${MODPY_FLAVOR} \
			net/py-ephemeral_port_reserve${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR} \
			sysutils/py-watchdog${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
