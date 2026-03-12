COMMENT =		Jupyter terminal console

MODPY_DISTV =		6.6.3
DISTNAME =		jupyter_console-${MODPY_DISTV}
PKGNAME =		jupyter-console-${MODPY_DISTV}

CATEGORIES =		devel

HOMEPAGE =		https://jupyter.org/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

RUN_DEPENDS =		devel/py-ipykernel \
			devel/ipython \
			devel/py-jupyter_client \
			devel/py-jupyter_core \
			devel/py-prompt_toolkit \
			textproc/py-pygments \
			net/py-zmq \
			devel/py-traitlets

PORTHOME =		${WRKSRC}
TEST_DEPENDS =		devel/py-flaky

.include <bsd.port.mk>
