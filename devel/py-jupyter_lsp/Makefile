COMMENT =		multi language server websocket proxy for jupyterlab server

MODPY_DISTV =		2.2.5
DISTNAME =		jupyter-lsp-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/-/_/}

CATEGORIES =		devel

HOMEPAGE =		https://jupyter.org/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-jupyter_server

.include <bsd.port.mk>
