COMMENT =		Jupyterlab computational environment

MODPY_DISTV =		4.5.1
DISTNAME =		jupyterlab-${MODPY_DISTV}

CATEGORIES =		www devel

HOMEPAGE =		https://jupyter.org/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

BUILD_DEPENDS =		devel/py-hatch-jupyter-builder

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/py-async-lru>=1.0.0 \
			devel/py-ipykernel>=6.5.0 \
			devel/py-jupyter_lsp>=2.0.0 \
			devel/py-jupyter_core \
			devel/py-jupyter_server>=2.4.0,<3 \
			devel/py-jupyterlab_server>=2.28.0,<3 \
			devel/py-notebook-shim>=0.2 \
			devel/py-setuptools \
			devel/py-traitlets \
			misc/shared-mime-info \
			sysutils/py-packaging \
			x11/gtk+4,-guic \
			www/py-httpx>=0.25.0,<1 \
			www/py-jinja2>=3.0.3 \
			www/py-tornado>=6.2.0

TEST_DEPENDS =		devel/py-coverage \
			devel/py-test-cov \
			devel/py-test-jupyter \
			www/py-requests

.include <bsd.port.mk>
