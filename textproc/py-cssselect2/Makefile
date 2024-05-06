COMMENT =		implementation of CSS4 Selectors

MODPY_EGG_VERSION =	0.7.0
DISTNAME =		cssselect2-${MODPY_EGG_VERSION}
PKGNAME =		py-cssselect2-${MODPY_EGG_VERSION}
REVISION =	2

CATEGORIES =		textproc

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		flit_core
MODPY_PI =	yes

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		textproc/py-webencodings${MODPY_FLAVOR} \
			textproc/py-tinycss2${MODPY_FLAVOR}
RUN_DEPENDS =		textproc/py-webencodings${MODPY_FLAVOR} \
			textproc/py-tinycss2${MODPY_FLAVOR}
TEST_DEPENDS +=		devel/py-test-flake8${MODPY_FLAVOR} \
			devel/py-test-isort${MODPY_FLAVOR} \
			devel/py-test-xdist${MODPY_FLAVOR}

.include <bsd.port.mk>
