COMMENT =		web-based notebook for interactive computing

MODPY_DISTV =		7.5.1
DISTNAME =		notebook-${MODPY_DISTV}
PKGNAME =		jupyter-notebook-${MODPY_DISTV}

CATEGORIES =		www devel

HOMEPAGE =		https://github.com/jupyter/notebook

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

BUILD_DEPENDS =		devel/py-hatch-jupyter-builder \
			www/jupyterlab<4.6

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/py-jupyter_server<3 \
			devel/py-jupyterlab_server<3 \
			devel/py-notebook-shim<0.3 \
			www/jupyterlab<4.6 \
			www/py-tornado>=6.2.0 \
			x11/gtk+4,-guic

TEST_DEPENDS =		devel/py-coverage \
			devel/py-ipykernel \
			devel/py-test-console-scripts \
			devel/py-test-jupyter\
			devel/py-test-timeout\
			devel/py-test-tornasync \
			www/py-requests

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
