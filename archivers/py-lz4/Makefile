COMMENT =		lz4 bindings for Python

MODPY_DISTV =	4.3.3

DISTNAME =		lz4-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		archivers

HOMEPAGE =		https://github.com/python-lz4/python-lz4

# BSD 3-clause
PERMIT_PACKAGE =	Yes

WANTLIB +=		lz4 pthread

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm
MODPY_PYTEST_ARGS =	--ignore tests/stream

BUILD_DEPENDS =		devel/py-pkgconfig
LIB_DEPENDS =		archivers/lz4
TEST_DEPENDS =		sysutils/py-psutil

pre-test:
	cd ${WRKSRC} && ${MODPY_CMD} build_ext --inplace

.include <bsd.port.mk>
