COMMENT =		Python library for reading and writing PDF files

MODPY_DISTV =	9.4.0
DISTNAME =		pikepdf-${MODPY_DISTV}
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
MODPY_PYTEST_ARGS =	-rs -v -o addopts=
CFLAGS +=		-I/usr/local/include

BUILD_DEPENDS =		devel/py-pybind11
RUN_DEPENDS =		devel/py-deprecated \
			graphics/py-Pillow \
			sysutils/py-packaging \
			textproc/py-lxml
LIB_DEPENDS =		print/qpdf
TEST_DEPENDS =		devel/py-hypothesis \
			math/py-numpy \
			sysutils/py-psutil

.include <bsd.port.mk>
