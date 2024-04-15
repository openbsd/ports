COMMENT =		low-level PDF generator

MODPY_EGG_VERSION =	0.9.0
DISTNAME =		pydyf-${MODPY_EGG_VERSION}
PKGNAME =		py-pydyf-${MODPY_EGG_VERSION}

CATEGORIES =		print

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		flit_core
MODPY_PI =		Yes
#MODPY_TEST_DIR=		${WRKSRC}/tests

TEST_DEPENDS +=		devel/py-test-flake8${MODPY_FLAVOR} \
			devel/py-test-isort${MODPY_FLAVOR} \
			devel/py-test-xdist${MODPY_FLAVOR} \
			graphics/py-Pillow${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
