# $OpenBSD: Makefile,v 1.126 2017/09/15 19:52:26 kili Exp $

COMMENT-main=	PDF rendering library
COMMENT-qt4=	qt4 interface to PDF rendering library
COMMENT-qt5=	Qt5 interface to PDF rendering library
COMMENT-utils=	PDF conversion tools and utilities

V=		0.57.0
DISTNAME=	poppler-$V
CATEGORIES=	print
PKGNAME-main=	poppler-$V
PKGNAME-utils=	poppler-utils-$V
PKGNAME-qt4=	poppler-qt4-$V
PKGNAME-qt5=	poppler-qt5-$V

EXTRACT_SUFX=	.tar.xz

SHARED_LIBS +=	poppler              44.0     # 68.0
SHARED_LIBS +=	poppler-glib         17.0     # 17.0
SHARED_LIBS +=	poppler-qt4          20.1     # 15.0
SHARED_LIBS +=	poppler-qt5          4.0      # 11.0
SHARED_LIBS +=	poppler-cpp          8.0      # 3.0

HOMEPAGE=	http://poppler.freedesktop.org/

MAINTAINER=	Matthias Kilian <kili@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

PSEUDO_FLAVORS=no_qt4 no_qt5 bootstrap
# XXX not strictly a bootstrap loop, but on the critical path for libreoffice
FLAVOR?=no_qt4 no_qt5 bootstrap

NOT_FOR_ARCHS-qt4 = arm
NOT_FOR_ARCHS-qt5 = arm

MULTI_PACKAGES=-main -qt4 -qt5 -utils

.include <bsd.port.arch.mk>

# c++-11
COMPILER=	gcc

cWANTLIB=	expat freetype fontconfig jpeg m pthread tiff z

.if ${BUILD_PACKAGES:M-qt4}
MODULES+=	x11/qt4
.else
CONFIGURE_ARGS+=	--disable-poppler-qt4
.endif

.if ${BUILD_PACKAGES:M-qt5}
MODULES+=	x11/qt5
.else
CONFIGURE_ARGS+=	--disable-poppler-qt5
.endif

BUILD_DEPENDS+= devel/gobject-introspection

RUN_DEPENDS-main= \
		print/poppler-data>=0.4.7

LIB_DEPENDS-main= \
		${LIB_DEPENDS} \
		converters/libiconv \
		devel/gettext \
		devel/glib2 \
		graphics/cairo \
		graphics/lcms2 \
		graphics/openjp2 \
		graphics/png \
		graphics/tiff

LIB_DEPENDS-qt4=${MODQT4_LIB_DEPENDS} \
		print/poppler

LIB_DEPENDS-qt5=${MODQT5_LIB_DEPENDS} \
		print/poppler

LIB_DEPENDS-utils= print/poppler

WANTLIB-main=	${cWANTLIB} Xext ffi gio-2.0 glib-2.0 gmodule-2.0 \
		gobject-2.0 pixman-1 openjp2 X11 Xrender cairo pcre \
		png pthread-stubs xcb xcb-render lcms2 xcb-shm \
		iconv intl ${COMPILER_LIBCXX}

WANTLIB-qt4=    ${cWANTLIB} ${MODQT4_WANTLIB} ICE QtCore QtGui QtXml \
		SM X11 Xext Xi Xinerama Xrender ffi glib-2.0 \
		gobject-2.0 gthread-2.0 iconv intl lcms2 openjp2 \
		png poppler pcre pthread-stubs ${COMPILER_LIBCXX} xcb

WANTLIB-qt5=	${cWANTLIB} $(COMPILER_LIBCXX) \
		GL Qt5Core Qt5Gui Qt5Widgets Qt5Xml X11 X11-xcb \
		Xdamage Xext Xfixes Xxf86vm drm execinfo glapi \
		glib-2.0 graphite2 gthread-2.0 harfbuzz \
		iconv icudata icui18n icuuc intl lcms2 openjp2 pcre \
		pcre2-16 png poppler pthread-stubs xcb xcb-dri2 xcb-glx

WANTLIB-utils=	X11 Xext Xrender c cairo fontconfig lcms2 m pixman-1 \
		png pthread-stubs ${COMPILER_LIBCXX} xcb xcb-render xcb-shm openjp2 \
		poppler z ${cWANTLIB}

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.69
CONFIGURE_ARGS+=--enable-xpdf-headers \
		--enable-poppler-cpp \
		--enable-utils \
		--enable-zlib \
		--disable-gtk-test \
		--disable-libnss \
		POPPLER_QT5_CXXFLAGS="-std=c++11"

CONFIGURE_ENV+= CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBJPEG_CFLAGS="-I${LOCALBASE}/include" \
		ac_cv_prog_MOCQT4=${MODQT4_MOC}

USE_GMAKE=	Yes

.include <bsd.port.mk>
