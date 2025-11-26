COMMENT=	high speed universal character encoding detector

MODPY_DISTV=	2.1.7
DISTNAME=	cchardet-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	5

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

BUILD_DEPENDS=	lang/cython

.include <bsd.port.mk>
