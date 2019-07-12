# $OpenBSD: Makefile,v 1.12 2019/07/12 20:45:50 sthen Exp $

COMMENT =		Jupyter protocol implementation and client libraries

MODPY_EGG_VERSION =	5.2.4
DISTNAME =		jupyter_client-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://jupyter.org/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	jupyter_client
PORTHOME =		${WRKDIR}

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-jupyter_core${MODPY_FLAVOR}>=4.3.0 \
			devel/py-traitlets${MODPY_FLAVOR} \
			net/py-zmq${MODPY_FLAVOR} \
			www/py-tornado${MODPY_FLAVOR}
TEST_DEPENDS =		devel/ipython${MODPY_FLAVOR}>=5.1.0 \
			devel/py-ipykernel${MODPY_FLAVOR}>=4.5.2 \
			shells/bash

.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-mock
.endif

post-install:
	mv ${PREFIX}/bin/jupyter-kernel{,${MODPY_BIN_SUFFIX}}
	mv ${PREFIX}/bin/jupyter-kernelspec{,${MODPY_BIN_SUFFIX}}
	mv ${PREFIX}/bin/jupyter-run{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
