# $OpenBSD: Makefile,v 1.135 2019/01/07 23:40:38 kili Exp $

COMMENT-main=	PDF rendering library
COMMENT-qt5=	Qt5 interface to PDF rendering library
COMMENT-utils=	PDF conversion tools and utilities

V=		0.72.0
DISTNAME=	poppler-$V
CATEGORIES=	print
PKGNAME-main=	poppler-$V
PKGNAME-utils=	poppler-utils-$V
PKGNAME-qt5=	poppler-qt5-$V

EXTRACT_SUFX=	.tar.xz

SHARED_LIBS +=	poppler              47.0     # 83.0
SHARED_LIBS +=	poppler-glib         19.0     # 8.11
SHARED_LIBS +=	poppler-qt5          6.0      # 1.17
SHARED_LIBS +=	poppler-cpp          10.0     # 0.5

HOMEPAGE=	https://poppler.freedesktop.org/

MAINTAINER=	Matthias Kilian <kili@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

PSEUDO_FLAVORS=no_qt5 bootstrap
# XXX not strictly a bootstrap loop, but on the critical path for libreoffice
FLAVOR?=no_qt5 bootstrap

NOT_FOR_ARCHS-qt5 = arm

MULTI_PACKAGES=-main -qt5 -utils

# XXX build fails with ld.bfd: undefined references to X libs e.g.
#
# /usr/bin/ld: warning: libfreetype.so.29.0, needed by ./libpoppler-glib.so.18.0, not found (try using -rpath or -rpath-link)
# /usr/bin/ld: warning: libfontconfig.so.12.0, needed by /usr/obj/ports/poppler-0.61.1-no_qt4-no_qt5-bootstrap/build-i386-no_qt4-no_qt5-bootstrap/libpoppler.so.46.0, not found (try using -rpath or -rpath-link)
# /usr/bin/ld: warning: libpixman-1.so.32.6, needed by /usr/local/lib/libcairo.so.13.0, not found (try using -rpath or -rpath-link)
#
# Probably just a missing -L/usr/X11R6/lib passed to the link phase of
# g-ir-scanner, as pointed out by kettenis@ in an internal mail.

.if ${MACHINE_ARCH} == i386
USE_LLD=	Yes
.endif

.include <bsd.port.arch.mk>

# c++-11
COMPILER=	base-clang ports-gcc

cWANTLIB=	expat freetype fontconfig jpeg m pthread tiff z

MODULES=	devel/cmake

.if ${BUILD_PACKAGES:M-qt5}
MODULES+=	x11/qt5
.else
CONFIGURE_ARGS+=	--disable-poppler-qt5
.endif

BUILD_DEPENDS+= devel/gobject-introspection

RUN_DEPENDS-main= \
		print/poppler-data>=0.4.7

LIB_DEPENDS-main=${MODGCC4_CPPLIBDEP} \
		converters/libiconv \
		devel/gettext \
		devel/glib2 \
		graphics/cairo \
		graphics/lcms2 \
		graphics/openjp2 \
		graphics/png \
		graphics/tiff

LIB_DEPENDS-qt5=${MODQT5_LIB_DEPENDS} \
		${MODGCC4_CPPLIBDEP} \
		print/poppler

LIB_DEPENDS-utils=${MODGCC4_CPPLIBDEP} \
		print/poppler

WANTLIB-main=	${cWANTLIB} Xext ffi gio-2.0 glib-2.0 gmodule-2.0 \
		gobject-2.0 pixman-1 openjp2 X11 Xrender cairo pcre \
		png xcb xcb-render lcms2 xcb-shm \
		iconv intl ${COMPILER_LIBCXX}

WANTLIB-qt5=	${cWANTLIB} $(COMPILER_LIBCXX) \
		GL Qt5Core Qt5Gui Qt5Widgets Qt5Xml X11 X11-xcb \
		Xdamage Xext Xfixes Xxf86vm drm execinfo glapi \
		glib-2.0 graphite2 gthread-2.0 harfbuzz \
		iconv icudata icui18n icuuc intl lcms2 openjp2 pcre \
		pcre2-16 png poppler xcb xcb-dri2 xcb-glx

WANTLIB-utils=	X11 Xext Xrender c cairo fontconfig lcms2 m pixman-1 \
		png ${COMPILER_LIBCXX} xcb xcb-render xcb-shm openjp2 \
		poppler z ${cWANTLIB}

CONFIGURE_ARGS+=-DENABLE_XPDF_HEADERS=True \
		-DBUILD_GTK_TESTS=False \
		-DENABLE_LIBCURL=False \
		-DCMAKE_DISABLE_FIND_PACKAGE_NSS3=True \
		-DOpenJPEG_DIR=${LOCALBASE}/lib/openjp2

.include <bsd.port.mk>
