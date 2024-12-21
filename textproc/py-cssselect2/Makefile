COMMENT =		implementation of CSS4 Selectors

MODPY_DISTV =	0.7.0
DISTNAME =		cssselect2-${MODPY_DISTV}
PKGNAME =		py-cssselect2-${MODPY_DISTV}
REVISION =	3

CATEGORIES =		textproc

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		flit_core
MODPY_PI =	yes

BUILD_DEPENDS =		textproc/py-webencodings \
			textproc/py-tinycss2
RUN_DEPENDS =		textproc/py-webencodings \
			textproc/py-tinycss2
TEST_DEPENDS +=		devel/py-test-flake8 \
			devel/py-test-isort \
			devel/py-test-xdist

.include <bsd.port.mk>
