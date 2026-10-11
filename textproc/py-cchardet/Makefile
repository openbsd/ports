COMMENT=	high speed universal character encoding detector

MODPY_DISTV=	2.4.0
DISTNAME=	cchardet-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/PyYoshi/cChardet

# MPL 1.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} m

# needs c++ and python
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c c++

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes
# needs chardet.evaluation (currently holding chardet at 5.x)
MODPY_PYTEST_IGNORE= tests/test_accuracy.py
# some tests in tests/test_1.py need txt files not in sdist

BUILD_DEPENDS=	lang/cython

.include <bsd.port.mk>
