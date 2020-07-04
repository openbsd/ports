# $OpenBSD: Makefile,v 1.44 2020/07/04 10:49:53 sthen Exp $

COMMENT-main=		high dynamic range image format
COMMENT-tools=		image viewing tools for OpenEXR
COMMENT-doc=		developer documentation for OpenEXR

V=			2.5.2
GH_ACCOUNT=		AcademySoftwareFoundation
GH_PROJECT=		openexr
GH_TAGNAME=		v${V}

REVISION-main=		0
REVISION-tools=		0
REVISION-doc=		0

PKGNAME-main=		OpenEXR-${V}
PKGNAME-tools=		OpenEXR-tools-${V}
PKGNAME-doc=		OpenEXR-doc-${V}

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# /!\ see symlinks creation in post-install (LIBHalf-2_5_VERSION is used)
.for solib in in Half Iex IexMath IlmImf IlmImfUtil IlmThread Imath PyIex_Python3_8 PyImath_Python3_8
SHARED_LIBS +=  ${solib} 0.0 # 24.0
SHARED_LIBS +=  ${solib}-2_5 0.0 # 24.0
.endfor

CATEGORIES=		graphics

HOMEPAGE=		http://www.openexr.com/

# Modified BSD license
# `name of ILM not to be used for advertizing without written agreement'
PERMIT_PACKAGE=		Yes

MULTI_PACKAGES= 	-main -tools -doc
DEBUG_PACKAGES=		-main -tools

COMPILER=		base-clang ports-gcc base-gcc

MODULES=		devel/cmake \
			lang/python

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

.if ${MACHINE_ARCH} == "mips64" || ${MACHINE_ARCH} == "mips64el"
CXXFLAGS +=		-mxgot
.endif

CONFIGURE_ARGS=		-DCMAKE_EXE_LINKER_FLAGS="-L${LOCALBASE}/lib"

WANTLIB-main += ${COMPILER_LIBCXX} ${MODPY_WANTLIB}
WANTLIB-main += boost_python3-mt intl m util z

BUILD_DEPENDS=		math/py-numpy${MODPY_FLAVOR}

LIB_DEPENDS-main +=	${MODPY_LIB_DEPENDS} \
			devel/boost

WANTLIB-tools += ${COMPILER_LIBCXX} Half-2_5 Iex-2_5 IexMath-2_5 IlmImf-2_5
WANTLIB-tools += IlmThread-2_5 Imath-2_5 c m z

LIB_DEPENDS-tools=	${BASE_PKGPATH}

PKG_ARCH-doc=		*
RUN_DEPENDS-doc=	# empty

post-install:
# fix links target; symlinks are required for FindIlmbase.cmake etc. to find the
# corresponding libs (e.g. find_library(ILMBASE_IMATH_LIBRARY Imath))
	cd ${PREFIX}/lib && \
		for i in *.so; do \
			test -h $$i && lib=$${i#lib} && lib=$${lib%.so} && \
			ln -sf lib$${lib}-2_5.so.${LIBHalf-2_5_VERSION} \
			$$i.${LIBHalf-2_5_VERSION} && rm $$i ; \
		done

.include <bsd.port.mk>
