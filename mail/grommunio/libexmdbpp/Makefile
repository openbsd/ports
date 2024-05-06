COMMENT=	C++ implementation of the exmdb wire protocol for grommunio

V=		1.11
DISTNAME=	libexmdbpp-${V}
REVISION=	0

SHARED_LIBS+=	exmdbpp	0.0 # 0.0

GH_ACCOUNT=	grommunio
GH_PROJECT=	libexmdbpp
GH_COMMIT=	cea6069bbe00f096ec48a19953a041d749ce0811

CATEGORIES=	mail www productivity

MODULES=	devel/cmake lang/python

# C++
COMPILER=	base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX} m

BUILD_DEPENDS=	devel/py-pybind11${MODPY_FLAVOR}

DEBUG_PACKAGES=	${BUILD_PACKAGES}

SUBST_VARS+=	MODPY_LIBDIR

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
