COMMENT =		Python Language Server

MODPY_EGG_VERSION =	0.36.2
DISTNAME =		python-language-server-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/autopep8 \
			devel/flake8>=3.8.0 \
			devel/pyflakes${MODPY_FLAVOR} \
			devel/py-codestyle${MODPY_FLAVOR}>=2.6.0 \
			devel/py-jedi${MODPY_FLAVOR}>=0.17.2 \
			devel/py-mccabe${MODPY_FLAVOR}>=0.6.0 \
			devel/py-pluggy${MODPY_FLAVOR} \
			devel/py-pydocstyle${MODPY_FLAVOR}>=2.0.0 \
			devel/py-rope${MODPY_FLAVOR} \
			devel/py-yapf${MODPY_FLAVOR} \
			net/py-python-jsonrpc-server${MODPY_FLAVOR}>=0.4.0 \
			textproc/py-ujson${MODPY_FLAVOR}

# XXX: pyflakes 3.1.0 removed ContinueInFinally so most tests fail
TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			devel/py-flaky${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			devel/pylint${MODPY_FLAVOR}

MODPY_PYTEST_ARGS=  --ignore test/plugins/test_pyflakes_lint.py

PORTHOME =	${WRKDIR}

.include <bsd.port.mk>
