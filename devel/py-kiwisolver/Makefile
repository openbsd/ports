COMMENT=	fast implementation of the Cassowary constraint solver

MODPY_DISTV=	1.4.8
DISTNAME=	kiwisolver-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# https://github.com/nucleic/kiwi
HOMEPAGE=	https://kiwisolver.readthedocs.io/

# BSD
PERMIT_PACKAGE=	Yes

# C++11
COMPILER=	base-clang ports-gcc

WANTLIB=	${COMPILER_LIBCXX} ${MODPY_WANTLIB} m

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

BUILD_DEPENDS=	devel/py-cppy

.include <bsd.port.mk>
