COMMENT =		Python Language Server

MODPY_DISTV =		1.15.0
DISTNAME =		python_lsp_server-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/_/-/g}
REVISION =		1

HOMEPAGE =		https://github.com/python-lsp/python-lsp-server

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

# required
RUN_DEPENDS =		devel/py-docstring-to-markdown \
			devel/py-jedi>=0.17.2,<0.21.0 \
			devel/py-pluggy>=1.0.0 \
			net/py-python-lsp-jsonrpc>=1.1.0,<2.0.0 \
			textproc/py-ujson>=3.0.0 \
			textproc/py-black

# optional
RUN_DEPENDS +=		devel/autopep8 \
			devel/flake8>=7.1.0,<8 \
			devel/pyflakes \
			devel/pylint>=3.1,<4 \
			devel/py-codestyle \
			devel/py-mccabe>=0.7.0,<0.8.0 \
			devel/py-pydocstyle>=6.3.0,<6.4.0 \
			devel/py-rope>=1.11.0 \
			devel/py-yapf>=0.33.0 \
			textproc/py-whatthepatch>=1.0.2,<2.0.0

TEST_DEPENDS =		devel/py-coverage \
			devel/py-mock \
			devel/py-flaky \
			devel/py-test-cov \
			devel/pylint \
			graphics/py-matplotlib \
			math/py-numpy \
			math/py-pandas \
			net/py-websockets \
			x11/py-qt6

PORTHOME =	${WRKDIR}

.include <bsd.port.mk>
