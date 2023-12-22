COMMENT =		Jupyter protocol implementation and client libraries

MODPY_EGG_VERSION =	7.4.9
DISTNAME =		jupyter_client-${MODPY_EGG_VERSION}
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

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR}>=2.8.2 \
			devel/py-entrypoints${MODPY_FLAVOR} \
			devel/py-jupyter_core${MODPY_FLAVOR}>=4.9.2 \
			devel/py-nest-asyncio${MODPY_FLAVOR}>=1.5.4 \
			devel/py-traitlets${MODPY_FLAVOR} \
			net/py-zmq${MODPY_FLAVOR}>=23.0 \
			www/py-tornado${MODPY_FLAVOR}>=6.2

TEST_DEPENDS =		devel/ipython${MODPY_FLAVOR} \
			devel/py-ipykernel${MODPY_FLAVOR} \
			shells/bash

FLAVORS =		python3
FLAVOR =		python3

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
