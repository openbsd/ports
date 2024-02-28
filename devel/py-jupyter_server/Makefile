COMMENT =		core APIs and REST endpoints for Jupyter web applications

# XXX can't update to 2.x until notebook supports it
MODPY_EGG_VERSION =	1.24.0
DISTNAME =		jupyter_server-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://jupyter.org/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		jupyter_packaging

BUILD_DEPENDS =		devel/pre-commit${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-jupyter_client${MODPY_FLAVOR}>=6.1.12 \
			devel/py-jupyter_core${MODPY_FLAVOR}>=4.12.0 \
			devel/py-nbconvert${MODPY_FLAVOR}>=6.4.4 \
			devel/py-nbformat${MODPY_FLAVOR}>=5.2.0 \
			devel/py-send2trash${MODPY_FLAVOR} \
			devel/py-traitlets${MODPY_FLAVOR}>=5.1 \
			net/py-anyio${MODPY_FLAVOR}>=3.1.0,<4 \
			net/py-websocket-client${MODPY_FLAVOR} \
			net/py-zmq${MODPY_FLAVOR}>=17v0 \
			security/py-argon2-cffi${MODPY_FLAVOR} \
			sysutils/py-packaging${MODPY_FLAVOR} \
			sysutils/py-prometheus_client${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR} \
			www/py-terminado${MODPY_FLAVOR}>=0.8.3 \
			www/py-tornado${MODPY_FLAVOR}>=6.1.0

# needs pytest-console-scripts
TEST_DEPENDS =		devel/pre-commit${MODPY_FLAVOR} \
			devel/py-coverage${MODPY_FLAVOR} \
			devel/py-ipykernel${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-test-jupyter${MODPY_FLAVOR} \
			devel/py-test-mock${MODPY_FLAVOR} \
			devel/py-test-timeout${MODPY_FLAVOR} \
			devel/py-test-tornasync${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
