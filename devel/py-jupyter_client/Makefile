COMMENT =		Jupyter protocol implementation and client libraries

MODPY_EGG_VERSION =	8.1.0
DISTNAME =		jupyter_client-${MODPY_EGG_VERSION}
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
MODPY_PYTEST_ARGS =	jupyter_client

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR}>=2.8.2 \
			devel/py-jupyter_core${MODPY_FLAVOR}>=4.12 \
			devel/py-traitlets${MODPY_FLAVOR}>=5.3 \
			net/py-zmq${MODPY_FLAVOR}>=23.0 \
			www/py-tornado${MODPY_FLAVOR}>=6.2

# XXX 8.x+ needs pytest-jupyter which needs jupyter_server>=1.21.0
NO_TEST = Yes
TEST_DEPENDS =		devel/ipython${MODPY_FLAVOR} \
			devel/py-ipykernel${MODPY_FLAVOR}>=6.14 \
			shells/bash

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
