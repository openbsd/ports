COMMENT =		IPython kernel for Jupyter

MODPY_EGG_VERSION =	5.3.0
DISTNAME =		ipykernel-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

PORTROACH=		limit:^5

CATEGORIES =		devel

HOMEPAGE =		https://ipython.org/

BUILD_DEPENDS =		devel/ipython${MODPY_FLAVOR} \
			devel/py-jupyter_core${MODPY_FLAVOR}>=4.2 \
			devel/py-jupyter_client${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-jupyter_client${MODPY_FLAVOR} \
			devel/py-traitlets${MODPY_FLAVOR}>=4.1.0 \
			www/py-tornado${MODPY_FLAVOR}>=4.2 \
			devel/ipython${MODPY_FLAVOR}>=5.0.0

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR} \
			devel/py-nose-warnings-filters${MODPY_FLAVOR} \
			devel/py-flaky${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			graphics/py-matplotlib${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR}

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
