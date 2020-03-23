# $OpenBSD: Makefile,v 1.14 2020/03/23 05:05:03 bket Exp $

COMMENT =		Jupyter protocol implementation and client libraries

MODPY_EGG_VERSION =	5.3.4
REVISION =		0
DISTNAME =		jupyter_client-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://jupyter.org/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	jupyter_client

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR}>=2.1 \
			devel/py-jupyter_core${MODPY_FLAVOR}>=4.6.0 \
			devel/py-traitlets${MODPY_FLAVOR} \
			net/py-zmq${MODPY_FLAVOR}>=13 \
			www/py-tornado${MODPY_FLAVOR}>=4.1
TEST_DEPENDS =		devel/ipython${MODPY_FLAVOR} \
			devel/py-ipykernel${MODPY_FLAVOR} \
			shells/bash

FLAVORS =		python3
FLAVOR =		python3

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
