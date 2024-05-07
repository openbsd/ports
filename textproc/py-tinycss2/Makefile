COMMENT =		tiny CSS parser

MODPY_EGG_VERSION =	1.3.0
DISTNAME =		tinycss2-${MODPY_EGG_VERSION}
PKGNAME =		py-tinycss2-${MODPY_EGG_VERSION}

CATEGORIES =		textproc

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		flit_core
MODPY_PI =		yes

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		textproc/py-webencodings${MODPY_FLAVOR}
RUN_DEPENDS =		textproc/py-webencodings${MODPY_FLAVOR}
TEST_DEPENDS +=		devel/py-test-flake8${MODPY_FLAVOR} \
			devel/py-test-isort${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-test-xdist${MODPY_FLAVOR}

.include <bsd.port.mk>
