COMMENT =		backend for Jupyter web applications

MODPY_DISTV =		2.15.0
DISTNAME =		jupyter_server-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://jupyter.org/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

BUILD_DEPENDS =		devel/py-hatch-jupyter-builder

RUN_DEPENDS =		devel/py-jupyter_client>=7.4.4 \
			devel/py-jupyter_core>=5.1 \
			devel/py-jupyter_events>=0.11.0 \
			devel/py-jupyter_server_terminals>=0.4.4 \
			devel/py-nbconvert>=6.4.4 \
			devel/py-nbformat>=5.3.0 \
			devel/py-overrides>=5.0 \
			devel/py-send2trash>=1.8.2 \
			devel/py-traitlets>=5.6.0 \
			net/py-anyio>=3.1.0 \
			net/py-websocket-client>=1.7 \
			net/py-zmq>=24v0 \
			security/py-argon2-cffi>=21.1 \
			sysutils/py-packaging>=22.0 \
			sysutils/py-prometheus_client>=0.9 \
			www/py-jinja2>=3.0.3 \
			www/py-terminado>=0.8.3 \
			www/py-tornado>=6.2.0

TEST_DEPENDS =		devel/pre-commit \
			devel/py-coverage \
			devel/py-flaky \
			devel/py-ipykernel \
			devel/py-test-console-scripts \
			devel/py-test-cov \
			devel/py-test-jupyter \
			devel/py-test-mock \
			devel/py-test-timeout \
			www/py-requests

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
