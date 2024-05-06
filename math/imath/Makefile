COMMENT=		C++ and python library of 2D and 3D vector & matrix

V=			3.1.11
GH_ACCOUNT=		AcademySoftwareFoundation
GH_PROJECT=		Imath
GH_TAGNAME=		v${V}
REVISION=		0

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# /!\ see symlinks creation in post-install (LIBImath-3_1_VERSION is used)
.for solib in Imath PyImath_Python3_11
SHARED_LIBS +=  ${solib}     2.0 # 28
SHARED_LIBS +=  ${solib}-3_1 2.0 # 28
.endfor

CATEGORIES=		math graphics devel

# BSD-3-Clause
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB}
WANTLIB += boost_python${MODPY_VERSION:C/\.//g}-mt intl m util

COMPILER=		base-clang ports-gcc base-gcc

MODULES=		devel/cmake \
			lang/python

BUILD_DEPENDS=		math/py-numpy${MODPY_FLAVOR}

LIB_DEPENDS=		devel/boost

.if ${MACHINE_ARCH} == "mips64" || ${MACHINE_ARCH} == "mips64el"
CXXFLAGS +=		-mxgot
.endif

CONFIGURE_ARGS =	-DPYTHON=ON

MODCMAKE_LDFLAGS =		-L${LOCALBASE}/lib

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-install:
# fix links target; symlinks are required for FindIlmbase.cmake etc. to find the
# corresponding libs (e.g. find_library(ILMBASE_IMATH_LIBRARY Imath))
	cd ${PREFIX}/lib && \
		for i in *.so; do \
			test -h $$i && lib=$${i#lib} && lib=$${lib%.so} && \
			ln -sf lib$${lib}-3_1.so.${LIBImath-3_1_VERSION} \
			$$i.${LIBImath-3_1_VERSION} && rm $$i ; \
		done

.include <bsd.port.mk>
