COMMENT-main=	PDF rendering library
COMMENT-qt5=	Qt5 interface to PDF rendering library
COMMENT-qt6=	Qt6 interface to PDF rendering library
COMMENT-utils=	PDF conversion tools and utilities

V=		24.04.0
DISTNAME=	poppler-$V
CATEGORIES=	print
PKGNAME-main=	poppler-$V
PKGNAME-utils=	poppler-utils-$V
PKGNAME-qt5=	poppler-qt5-$V
PKGNAME-qt6=	poppler-qt6-$V

EXTRACT_SUFX=	.tar.xz

SHARED_LIBS +=	poppler              79.0     # 136.0
SHARED_LIBS +=	poppler-glib         19.12    # 8.26
SHARED_LIBS +=	poppler-qt5          8.12     # 1.33
SHARED_LIBS +=	poppler-qt6          1.4      # 3.4
SHARED_LIBS +=	poppler-cpp          17.1     # 0.11

HOMEPAGE=	https://poppler.freedesktop.org/

MAINTAINER=	Matthias Kilian <kili@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

SITES=		${HOMEPAGE}

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
		-DENABLE_GPGME=False \
		-DENABLE_NSS3=False \
		-DOpenJPEG_DIR=${LOCALBASE}/lib/openjp2 \
		-DX11BASE=${X11BASE}

# if gperf is found at configure time then junked, it will triggers undefined
# symbols
CONFIGURE_ARGS +=	-DRUN_GPERF_IF_PRESENT=OFF

.include <bsd.port.mk>
