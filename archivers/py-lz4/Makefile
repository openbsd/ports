COMMENT =		lz4 bindings for Python

MODPY_DISTV =		4.4.5
DISTNAME =		lz4-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		archivers

HOMEPAGE =		https://github.com/python-lz4/python-lz4

# BSD 3-clause
PERMIT_PACKAGE =	Yes

WANTLIB +=		lz4 pthread

MODULES =		lang/python
MODPY_PYBUILD =		setuptools_scm
MODPY_PI =		Yes

MODPY_PYTEST_ARGS =	--ignore tests/stream
MODPY_TEST_LINK_SO =	Yes

BUILD_DEPENDS =		devel/py-pkgconfig
LIB_DEPENDS =		archivers/lz4
TEST_DEPENDS =		sysutils/py-psutil

.include <bsd.port.mk>
