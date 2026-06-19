COMMENT =	fast fuzzy string matching library for Python

MODPY_DISTV =	3.14.5
DISTNAME =	rapidfuzz-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	textproc

HOMEPAGE =	https://github.com/rapidfuzz/RapidFuzz

# MIT
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} m

# C++17
COMPILER =	base-clang ports-gcc

MODULES =	lang/python
MODPY_PYBUILD =	scikit-build-core
MODPY_PI =	Yes

TEST_DEPENDS =	devel/py-hypothesis \
		math/py-numpy \
		math/py-pandas

.include <bsd.port.mk>
