COMMENT=	json5 serializer and parser written in Cython

MODPY_DISTV=	2.0.0
DISTNAME=	pyjson5-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

# https://pyjson5.readthedocs.io/en/latest/changelog.html
# https://github.com/Kijewski/pyjson5
HOMEPAGE=	https://pyjson5.readthedocs.io/

CATEGORIES=	textproc

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} m

COMPILER=	base-clang ports-gcc

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

BUILD_DEPENDS=	lang/cython

# not in sdist; needs submodules to run from git
NO_TEST=	Yes

.include <bsd.port.mk>
