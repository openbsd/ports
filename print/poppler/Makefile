# $OpenBSD: Makefile,v 1.170 2021/12/24 10:09:02 kili Exp $

COMMENT-main=	PDF rendering library
COMMENT-qt5=	Qt5 interface to PDF rendering library
COMMENT-qt6=	Qt6 interface to PDF rendering library
COMMENT-utils=	PDF conversion tools and utilities

V=		21.12.0
DISTNAME=	poppler-$V
CATEGORIES=	print
PKGNAME-main=	poppler-$V
PKGNAME-utils=	poppler-utils-$V
PKGNAME-qt5=	poppler-qt5-$V
PKGNAME-qt6=	poppler-qt6-$V

EXTRACT_SUFX=	.tar.xz

SHARED_LIBS +=	poppler              73.0     # 116.0
SHARED_LIBS +=	poppler-glib         19.10    # 8.22
SHARED_LIBS +=	poppler-qt5          8.10      # 1.30
SHARED_LIBS +=	poppler-qt6          1.1      # 3.1
SHARED_LIBS +=	poppler-cpp          17.0     # 0.9

HOMEPAGE=	https://poppler.freedesktop.org/

MAINTAINER=	Matthias Kilian <kili@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}

DEBUG_PACKAGES=	${BUILD_PACKAGES}

NOT_FOR_ARCHS-qt5 = arm

MULTI_PACKAGES=-main -qt5 -qt6 -utils

.include <bsd.port.arch.mk>

# c++-17
COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake

.if ${BUILD_PACKAGES:M-qt5}
MODULES+=	x11/qt5
MODQT5_DEPS=	No
.endif

.if ${BUILD_PACKAGES:M-qt6}
MODULES+=	x11/qt6
MODQT6_DEPS=	No
.endif

# devel/boost only as build+run dependency, poppler uses
# header-only classes (from boost/containers/small_vector.hpp)
# which are pulled in by installed headers, but does not use
# boost libraries.
BUILD_DEPENDS+= devel/boost \
		devel/gobject-introspection

RUN_DEPENDS-main= \
		print/poppler-data>=0.4.7 \
		devel/boost

LIB_DEPENDS-main=${MODGCC4_CPPLIBDEP} \
		converters/libiconv \
		devel/gettext,-runtime \
		devel/glib2 \
		graphics/cairo \
		graphics/lcms2 \
		graphics/openjp2 \
		graphics/png \
		graphics/tiff

LIB_DEPENDS-qt5=${MODQT5_LIB_DEPENDS} \
		${MODGCC4_CPPLIBDEP} \
		print/poppler

LIB_DEPENDS-qt6=${MODQT6_LIB_DEPENDS} \
		${MODGCC4_CPPLIBDEP} \
		print/poppler

LIB_DEPENDS-utils=${MODGCC4_CPPLIBDEP} \
		print/poppler

WANTLIB-main=	${COMPILER_LIBCXX} \
		cairo fontconfig freetype gio-2.0 glib-2.0 gobject-2.0 \
		iconv intl jpeg lcms2 m openjp2 png tiff z

WANTLIB-qt5=	$(COMPILER_LIBCXX) Qt5Core Qt5Gui Qt5Xml freetype lcms2 \
		m poppler

WANTLIB-qt6=	$(COMPILER_LIBCXX) GL Qt6Core Qt6Gui freetype lcms2 \
		m poppler

WANTLIB-utils=	${COMPILER_LIBCXX} c cairo freetype lcms2 m poppler

CONFIGURE_ARGS+=-DENABLE_UNSTABLE_API_ABI_HEADERS=True \
		-DBUILD_GTK_TESTS=False \
		-DENABLE_LIBCURL=False \
		-DCMAKE_DISABLE_FIND_PACKAGE_NSS3=True \
		-DOpenJPEG_DIR=${LOCALBASE}/lib/openjp2 \
		-DX11BASE=${X11BASE}

.include <bsd.port.mk>
