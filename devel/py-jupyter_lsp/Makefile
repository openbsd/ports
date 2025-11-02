COMMENT =		multi language server websocket proxy for jupyterlab server

MODPY_DISTV =		2.3.0
DISTNAME =		jupyter_lsp-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://jupyter.org/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-jupyter_server

PORTHOME =		${WRDIR}

.include <bsd.port.mk>
