COMMENT=	list-like structure implementing MutableSequence

MODPY_DISTV=	1.8.0
DISTNAME=	frozenlist-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# https://github.com/aio-libs/frozenlist
HOMEPAGE=	https://frozenlist.readthedocs.io/

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} m

# C++
COMPILER=	base-clang ports-gcc

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

BUILD_DEPENDS=	lang/cython \
		sysutils/py-expandvars

.include <bsd.port.mk>
