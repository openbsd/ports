COMMENT =		Python library for reading and writing PDF files

MODPY_EGG_VERSION =	8.15.1
DISTNAME =		pikepdf-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:S/.post/pl/}
REVISION =		0

CATEGORIES =		print

HOMEPAGE =		https://pikepdf.readthedocs.io/

# MPL-2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} m qpdf

# C++14
COMPILER =		base-clang ports-gcc

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	-rs -v -o addopts=
CFLAGS +=		-I/usr/local/include

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		devel/py-pybind11${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-deprecated${MODPY_FLAVOR} \
			graphics/py-Pillow${MODPY_FLAVOR} \
			sysutils/py-packaging${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR}
LIB_DEPENDS =		print/qpdf
TEST_DEPENDS =		devel/py-hypothesis${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR} \
			sysutils/py-psutil${MODPY_FLAVOR}

.include <bsd.port.mk>
