COMMENT =		Jupyter protocol implementation and client libraries

MODPY_DISTV =	8.6.3
DISTNAME =		jupyter_client-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://jupyter.org/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling
MODPY_PYTEST_ARGS =	jupyter_client

RUN_DEPENDS =		devel/py-dateutil>=2.8.2 \
			devel/py-jupyter_core>=4.12 \
			devel/py-traitlets>=5.3 \
			net/py-zmq>=23.0 \
			www/py-tornado>=6.2

TEST_DEPENDS =		devel/ipython \
			devel/pre-commit \
			devel/py-coverage \
			devel/py-ipykernel>=6.14 \
			devel/py-mypy \
			devel/py-test-cov \
			devel/py-test-jupyter \
			devel/py-test-timeout \
			shells/bash

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
