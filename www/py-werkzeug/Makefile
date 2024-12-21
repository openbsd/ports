COMMENT =		WSGI utility collection

MODPY_DISTV =	2.3.8
DISTNAME =		werkzeug-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
EPOCH =			0
REVISION =		1

CATEGORIES =		www devel

HOMEPAGE =		https://palletsprojects.com/p/werkzeug/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PYBUILD =		flit_core
MODPY_PI =		Yes
# verbose for now, it has been seen hanging at times
MODPY_PYTEST_ARGS =	-v

RUN_DEPENDS =		textproc/py-MarkupSafe

TEST_DEPENDS =		devel/py-greenlet \
			devel/py-test-timeout \
			devel/py-test-xprocess \
			net/py-ephemeral_port_reserve \
			security/py-cryptography \
			sysutils/py-watchdog \
			www/py-requests

.include <bsd.port.mk>
