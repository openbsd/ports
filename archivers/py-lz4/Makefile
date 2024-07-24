COMMENT =		lz4 bindings for Python

MODPY_EGG_VERSION =	4.3.3

DISTNAME =		lz4-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		archivers

HOMEPAGE =		https://github.com/python-lz4/python-lz4

# BSD 3-clause
PERMIT_PACKAGE =	Yes

WANTLIB +=		lz4 pthread

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm
MODPY_PYTEST_ARGS =	--ignore tests/stream

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		devel/py-pkgconfig${MODPY_FLAVOR}
LIB_DEPENDS =		archivers/lz4
TEST_DEPENDS =		sysutils/py-psutil${MODPY_FLAVOR}

pre-test:
	cd ${WRKSRC} && ${MODPY_CMD} build_ext --inplace

.include <bsd.port.mk>
