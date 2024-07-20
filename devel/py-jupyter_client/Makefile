COMMENT =		Jupyter protocol implementation and client libraries

MODPY_EGG_VERSION =	8.6.2
DISTNAME =		jupyter_client-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

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

TEST_DEPENDS =		devel/ipython${MODPY_FLAVOR} \
			devel/pre-commit \
			devel/py-coverage${MODPY_FLAVOR} \
			devel/py-ipykernel${MODPY_FLAVOR}>=6.14 \
			devel/py-mypy${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-test-jupyter${MODPY_FLAVOR} \
			devel/py-test-timeout${MODPY_FLAVOR} \
			shells/bash

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
