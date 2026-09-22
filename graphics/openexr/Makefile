COMMENT-main=		high dynamic range image format
COMMENT-tools=		image viewing tools for OpenEXR
COMMENT-doc=		developer documentation for OpenEXR

V=			3.5.0
GH_ACCOUNT=		AcademySoftwareFoundation
GH_PROJECT=		openexr
GH_TAGNAME=		v${V}

PKGNAME-main=		openexr-${V}
PKGNAME-tools=		openexr-tools-${V}
PKGNAME-doc=		openexr-doc-${V}

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# /!\ see symlinks creation in post-install (LIBOpenEXR-3_5_VERSION is used)
.for solib in Iex IlmThread OpenEXR OpenEXRCore OpenEXRUtil
SHARED_LIBS +=  ${solib} 0.1 # 0.0
SHARED_LIBS +=  ${solib}-3_5 0.1 # 0.0
.endfor

CATEGORIES=		graphics

HOMEPAGE=		http://www.openexr.com/

# BSD-3-Clause
PERMIT_PACKAGE=		Yes

MULTI_PACKAGES= 	-main -tools -doc
DEBUG_PACKAGES=		-main -tools

COMPILER=		base-clang ports-gcc base-gcc

MODULES=		devel/cmake

.if ${MACHINE_ARCH} == "mips64" || ${MACHINE_ARCH} == "mips64el"
CXXFLAGS +=		-mxgot
.endif

WANTLIB-main += ${COMPILER_LIBCXX} Imath-3_2 deflate m openjph zstd

LIB_DEPENDS-main=	archivers/libdeflate \
			graphics/openjph \
			math/imath

WANTLIB-tools += ${COMPILER_LIBCXX} Iex-3_5 IlmThread-3_5 Imath-3_2
WANTLIB-tools += OpenEXR-3_5 OpenEXRCore-3_5 OpenEXRUtil-3_5 c m

LIB_DEPENDS-tools=	${BASE_PKGPATH}

PKG_ARCH-doc=		*
LIB_DEPENDS-doc=	# empty
RUN_DEPENDS-doc=	# empty
WANTLIB-doc=		# empty

MODCMAKE_LDFLAGS =		-L${LOCALBASE}/lib

# needs python and openexr-images
CONFIGURE_ARGS=		-DBUILD_TESTING=OFF

post-install:
# fix links target; symlinks are required for FindIlmbase.cmake etc. to find the
# corresponding libs (e.g. find_library(ILMBASE_IMATH_LIBRARY Imath))
	cd ${PREFIX}/lib && \
		for i in *.so; do \
			test -h $$i && lib=$${i#lib} && lib=$${lib%.so} && \
			ln -sf lib$${lib}-3_5.so.${LIBOpenEXR-3_5_VERSION} \
			$$i.${LIBOpenEXR-3_5_VERSION} && rm $$i ; \
		done

.include <bsd.port.mk>
