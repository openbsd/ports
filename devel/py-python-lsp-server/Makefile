COMMENT =		Python Language Server

MODPY_DISTV =	1.12.0
DISTNAME =		python_lsp_server-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/_/-/g}
REVISION =		0

CATEGORIES =		devel

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

RUN_DEPENDS =		devel/autopep8 \
			devel/flake8>=7.1.0,<8 \
			devel/pyflakes>=3.2.0,<3.3.0 \
			devel/pylint>=3.1,<4 \
			devel/py-codestyle>=2.12.0,<2.13.0 \
			devel/py-docstring-to-markdown \
			devel/py-jedi>=0.17.2,<0.20.0 \
			devel/py-mccabe>=0.7.0,<0.8.0 \
			devel/py-pluggy>=1.0.0 \
			devel/py-pydocstyle>=6.3.0,<6.4.0 \
			devel/py-rope>=1.11.0 \
			devel/py-yapf>=0.33.0 \
			net/py-python-lsp-jsonrpc>=1.1.0,<2.0.0 \
			textproc/py-ujson>=3.0.0 \
			textproc/py-whatthepatch>=1.0.2,<2.0.0

TEST_DEPENDS =		devel/py-mock \
			devel/py-flaky \
			devel/py-test-cov \
			devel/pylint

MODPY_PYTEST_ARGS=  --ignore test/plugins/test_pyflakes_lint.py

PORTHOME =	${WRKDIR}

.include <bsd.port.mk>
