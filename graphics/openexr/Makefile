COMMENT-main=		high dynamic range image format
COMMENT-tools=		image viewing tools for OpenEXR
COMMENT-doc=		developer documentation for OpenEXR

V=			3.2.4
GH_ACCOUNT=		AcademySoftwareFoundation
GH_PROJECT=		openexr
GH_TAGNAME=		v${V}

PKGNAME-main=		OpenEXR-${V}
PKGNAME-tools=		OpenEXR-tools-${V}
PKGNAME-doc=		OpenEXR-doc-${V}

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# /!\ see symlinks creation in post-install (LIBOpenEXR-3_2_VERSION is used)
.for solib in Iex IlmThread OpenEXR OpenEXRCore OpenEXRUtil
SHARED_LIBS +=  ${solib} 2.0 # 0.0
SHARED_LIBS +=  ${solib}-3_2 2.0 # 0.0
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

WANTLIB-main += ${COMPILER_LIBCXX} Imath-3_1 deflate m

LIB_DEPENDS-main=	archivers/libdeflate \
			math/imath

WANTLIB-tools += ${COMPILER_LIBCXX} Iex-3_2
WANTLIB-tools += IlmThread-3_2 Imath-3_1 OpenEXR-3_2 OpenEXRCore-3_2 c m

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
			ln -sf lib$${lib}-3_2.so.${LIBOpenEXR-3_2_VERSION} \
			$$i.${LIBOpenEXR-3_2_VERSION} && rm $$i ; \
		done

.include <bsd.port.mk>
