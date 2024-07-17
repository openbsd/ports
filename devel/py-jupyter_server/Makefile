COMMENT =		backend for Jupyter web applications

MODPY_EGG_VERSION =	2.14.2
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
MODPY_PYBUILD =		hatchling

BUILD_DEPENDS =		devel/py-hatch-jupyter-builder${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-jupyter_client${MODPY_FLAVOR}>=7.4.4 \
			devel/py-jupyter_core${MODPY_FLAVOR}>=5.1 \
			devel/py-jupyter_events${MODPY_FLAVOR}>=0.9.0 \
			devel/py-jupyter_server_terminals${MODPY_FLAVOR}>=0.4.4 \
			devel/py-nbconvert${MODPY_FLAVOR}>=6.4.4 \
			devel/py-nbformat${MODPY_FLAVOR}>=5.3.0 \
			devel/py-overrides${MODPY_FLAVOR}>=5.0 \
			devel/py-send2trash${MODPY_FLAVOR}>=1.8.2 \
			devel/py-traitlets${MODPY_FLAVOR}>=5.6.0 \
			net/py-anyio${MODPY_FLAVOR}>=3.1.0 \
			net/py-websocket-client${MODPY_FLAVOR}>=1.7 \
			net/py-zmq${MODPY_FLAVOR}>=24v0 \
			security/py-argon2-cffi${MODPY_FLAVOR}>=21.1 \
			sysutils/py-packaging${MODPY_FLAVOR}>=22.0 \
			sysutils/py-prometheus_client${MODPY_FLAVOR}>=0.9 \
			www/py-jinja2${MODPY_FLAVOR}>=3.0.3 \
			www/py-terminado${MODPY_FLAVOR}>=0.8.3 \
			www/py-tornado${MODPY_FLAVOR}>=6.2.0

TEST_DEPENDS =		devel/pre-commit${MODPY_FLAVOR} \
			devel/py-coverage${MODPY_FLAVOR} \
			devel/py-flaky${MODPY_FLAVOR} \
			devel/py-ipykernel${MODPY_FLAVOR} \
			devel/py-test-console-scripts${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-test-jupyter${MODPY_FLAVOR} \
			devel/py-test-mock${MODPY_FLAVOR} \
			devel/py-test-timeout${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
