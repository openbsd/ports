# $OpenBSD: Makefile,v 1.55 2022/01/28 08:50:57 ajacoutot Exp $

COMMENT-main=		high dynamic range image format
COMMENT-tools=		image viewing tools for OpenEXR
COMMENT-doc=		developer documentation for OpenEXR

V=			3.1.4
GH_ACCOUNT=		AcademySoftwareFoundation
GH_PROJECT=		openexr
GH_TAGNAME=		v${V}

PKGNAME-main=		OpenEXR-${V}
PKGNAME-tools=		OpenEXR-tools-${V}
PKGNAME-doc=		OpenEXR-doc-${V}

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# /!\ see symlinks creation in post-install (LIBOpenEXR-3_1_VERSION is used)
.for solib in in Iex IlmThread OpenEXR OpenEXRCore OpenEXRUtil
SHARED_LIBS +=  ${solib} 1.0 # 28
SHARED_LIBS +=  ${solib}-3_1 1.0 # 28
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

WANTLIB-main += ${COMPILER_LIBCXX} Imath-3_1 m z

LIB_DEPENDS-main=	math/imath

WANTLIB-tools += ${COMPILER_LIBCXX} Iex-3_1
WANTLIB-tools += IlmThread-3_1 Imath-3_1 OpenEXR-3_1 OpenEXRCore-3_1 c m z

LIB_DEPENDS-tools=	${BASE_PKGPATH}

PKG_ARCH-doc=		*
LIB_DEPENDS-doc=	# empty
RUN_DEPENDS-doc=	# empty
WANTLIB-doc=		# empty

CONFIGURE_ARGS=		-DCMAKE_EXE_LINKER_FLAGS="-L${LOCALBASE}/lib"

post-install:
# fix links target; symlinks are required for FindIlmbase.cmake etc. to find the
# corresponding libs (e.g. find_library(ILMBASE_IMATH_LIBRARY Imath))
	cd ${PREFIX}/lib && \
		for i in *.so; do \
			test -h $$i && lib=$${i#lib} && lib=$${lib%.so} && \
			ln -sf lib$${lib}-3_1.so.${LIBOpenEXR-3_1_VERSION} \
			$$i.${LIBOpenEXR-3_1_VERSION} && rm $$i ; \
		done

.include <bsd.port.mk>
