COMMENT=	Python bindings to TagLib audio file tag library

MODPY_DISTV=	2025.1
GH_ACCOUNT=	palfrey
GH_PROJECT=	tagpy
GH_TAGNAME=	v${MODPY_DISTV}
#DISTNAME=	tagpy-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	audio devel

HOMEPAGE=	https://github.com/palfrey/tagpy

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} boost_python${MODPY_VERSION:C/\.//g} m tag

COMPILER=	base-clang ports-gcc

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
# some files required for tests aren't included in pypi sdist
#MODPY_PI=	Yes

LIB_DEPENDS=	audio/taglib \
		devel/boost

CFLAGS_base-clang= -D_LIBCPP_ENABLE_CXX17_REMOVED_AUTO_PTR
CFLAGS +=	-I${LOCALBASE}/include
MAKE_ENV=	CPPFLAGS="${CFLAGS}"

.include <bsd.port.mk>
