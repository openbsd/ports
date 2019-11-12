# $OpenBSD: Makefile,v 1.37 2019/11/12 20:13:30 ajacoutot Exp $

COMMENT-main=		high dynamic range image format
COMMENT-tools=		image viewing tools for OpenEXR
COMMENT-doc=		developer documentation for OpenEXR

V=			2.4.0
GH_ACCOUNT=		openexr
GH_PROJECT=		openexr
GH_TAGNAME=		v${V}

PKGNAME-main=		OpenEXR-${V}
PKGNAME-tools=		OpenEXR-tools-${V}
PKGNAME-doc=		OpenEXR-doc-${V}

REVISION-main=		1
REVISION-tools=		0

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# XXX /!\ LIBHalf-2_4_VERSION is used for all libs in post-install
SHARED_LIBS +=	Half-2_4               0.0  # 24.0
SHARED_LIBS +=	Iex-2_4                0.0  # 24.0
SHARED_LIBS +=	IexMath-2_4            0.0  # 24.0
SHARED_LIBS +=	IlmImf-2_4             0.0  # 24.0
SHARED_LIBS +=	IlmImfUtil-2_4         0.0  # 24.0
SHARED_LIBS +=	IlmThread-2_4          0.0  # 24.0
SHARED_LIBS +=	Imath-2_4              0.0  # 24.0
SHARED_LIBS +=	PyIex_Python3_7-2_4    0.0  # 24.0
SHARED_LIBS +=	PyImath_Python3_7-2_4  0.0  # 24.0

CATEGORIES=		graphics

HOMEPAGE=		http://www.openexr.com/

# Modified BSD license
# `name of ILM not to be used for advertizing without written agreement'
PERMIT_PACKAGE=		Yes

MULTI_PACKAGES= 	-main -tools -doc

COMPILER=		base-clang ports-gcc base-gcc

MODULES=		devel/cmake \
			lang/python

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

DEBUG_PACKAGES=		${BUILD_PACKAGES}

CONFIGURE_ARGS=		-DCMAKE_EXE_LINKER_FLAGS="-L${LOCALBASE}/lib"

WANTLIB-main += ${COMPILER_LIBCXX} ${MODPY_WANTLIB}
WANTLIB-main += boost_python3-mt intl m util z

BUILD_DEPENDS=		math/py-numpy${MODPY_FLAVOR}

LIB_DEPENDS-main +=	${MODPY_LIB_DEPENDS} \
			devel/boost

WANTLIB-tools += ${COMPILER_LIBCXX} GL Half-2_4 ICE Iex-2_4 IexMath-2_4
WANTLIB-tools += IlmImf-2_4 IlmThread-2_4 Imath-2_4 SM X11 Xext c fltk
WANTLIB-tools += fltk_forms fltk_gl fltk_images m z

LIB_DEPENDS-tools=	${BASE_PKGPATH} \
			x11/fltk

PKG_ARCH-doc=		*

post-install:
# fix links target
	cd ${PREFIX}/lib && \
		for i in *.so; do \
			test -h $$i && lib=$${i#lib} && lib=$${lib%.so} && \
			ln -sf lib$${lib}-2_4.so.${LIBHalf-2_4_VERSION} $$i ; \
		done


.include <bsd.port.mk>
