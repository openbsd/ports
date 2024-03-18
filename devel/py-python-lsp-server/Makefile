COMMENT =		Python Language Server

MODPY_EGG_VERSION =	1.10.1
DISTNAME =		python-lsp-server-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

RUN_DEPENDS =		devel/autopep8>=2.0.4,<2.1.0 \
			devel/flake8>=7.0.0,<8 \
			devel/pyflakes${MODPY_FLAVOR}>=3.2.0,<3.3.0 \
			devel/pylint${MODPY_FLAVOR}>=2.5.0,<3.1 \
			devel/py-codestyle${MODPY_FLAVOR}>=2.11.0,<2.12.0 \
			devel/py-docstring-to-markdown${MODPY_FLAVOR} \
			devel/py-jedi${MODPY_FLAVOR}>=0.17.2,<0.20.0 \
			devel/py-mccabe${MODPY_FLAVOR}>=0.7.0,<0.8.0 \
			devel/py-pluggy${MODPY_FLAVOR}>=1.0.0 \
			devel/py-pydocstyle${MODPY_FLAVOR}>=6.3.0,<6.4.0 \
			devel/py-rope${MODPY_FLAVOR}>=1.11.0 \
			devel/py-yapf${MODPY_FLAVOR}>=0.33.0 \
			net/py-python-lsp-jsonrpc${MODPY_FLAVOR}>=1.1.0,<2.0.0 \
			textproc/py-ujson${MODPY_FLAVOR}>=3.0.0 \
			textproc/py-whatthepatch${MODPY_FLAVOR}>=1.0.2,<2.0.0

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			devel/py-flaky${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			devel/pylint${MODPY_FLAVOR}

MODPY_PYTEST_ARGS=  --ignore test/plugins/test_pyflakes_lint.py

PORTHOME =	${WRKDIR}

.include <bsd.port.mk>
