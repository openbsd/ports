# $OpenBSD: Makefile,v 1.56 2011/11/12 10:50:53 robert Exp $

COMMENT-main=	PDF rendering library
COMMENT-qt=	qt interface to PDF rendering library
COMMENT-qt4=	qt4 interface to PDF rendering library

V=		0.16.7
DISTNAME=	poppler-$V
CATEGORIES=	print
PKGNAME-main=	poppler-$V
FULLPKGNAME-qt=	poppler-qt-$V
FULLPKGNAME-qt4=poppler-qt4-$V

REVISION-main=	2
REVISION-qt =	0
REVISION-qt4 =	1

SHARED_LIBS +=	poppler              10.0
SHARED_LIBS +=  poppler-cpp          0.0
SHARED_LIBS +=	poppler-glib         8.0
SHARED_LIBS +=	poppler-qt           8.0
SHARED_LIBS +=	poppler-qt4          7.0

HOMEPAGE=	http://poppler.freedesktop.org/

MAINTAINER=	Matthias Kilian <kili@openbsd.org>

# GPLv2
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

PSEUDO_FLAVORS=no_qt no_qt4
FLAVOR?=

NOT_FOR_ARCHS-qt4 = arm

MULTI_PACKAGES=-main -qt -qt4

.include <bsd.port.arch.mk>


cWANTLIB=	expat freetype fontconfig jpeg m z stdc++


.if ${BUILD_PACKAGES:M-qt}
MODULES+=	x11/qt3
.else
CONFIGURE_ARGS+=	--disable-poppler-qt
.endif

.if ${BUILD_PACKAGES:M-qt4}
MODULES+=	x11/qt4
.else
CONFIGURE_ARGS+=	--disable-poppler-qt4
.endif

# XXX g-ir-scanner failure with gcc3
.if ${COMPILER_VERSION:L:Mgcc4*}
PKG_ARGS+= 	-DGCC4=1
BUILD_DEPENDS+=	devel/gobject-introspection
CONFIGURE_ARGS+=--enable-introspection
.else
PKG_ARGS+=	-DGCC4=0
CONFIGURE_ARGS+=--disable-introspection
.endif

MODULES+=	devel/gettext converters/libiconv

LIB_DEPENDS-main=${MODGETTEXT_LIB_DEPENDS} \
		${MODLIBICONV_LIB_DEPENDS} \
		x11/gtk+2 \
		graphics/lcms \
		graphics/openjpeg \
		textproc/libxml
LIB_DEPENDS-qt=	${MODQT3_LIB_DEPENDS} \
		${MODLIBICONV_LIB_DEPENDS} \
		print/poppler
LIB_DEPENDS-qt4=x11/qt4 \
		${MODGETTEXT_LIB_DEPENDS} \
		print/poppler

WANTLIB-main=	${cWANTLIB} Xcursor Xext Xfixes Xi Xinerama Xrandr c ffi gio-2.0 \
		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 pango-1.0 xml2 \
		pangocairo-1.0 pangoft2-1.0 pixman-1 gdk_pixbuf-2.0 openjpeg \
		X11 Xau Xcomposite Xdamage Xdmcp Xrender cairo pcre png \
		pthread pthread-stubs xcb xcb-render gdk-x11-2.0 lcms GL Xxf86vm \
		drm xcb-shm ${MODGETTEXT_WANTLIB}
WANTLIB-qt=	${cWANTLIB} lcms openjpeg xml2 poppler png ${MODQT3_WANTLIB} \
		${MODLIBICONV_WANTLIB}
WANTLIB-qt4=	${cWANTLIB} ICE QtCore QtGui QtXml SM X11 Xau Xdmcp Xext Xi \
                Xinerama Xrender ffi glib-2.0 gobject-2.0 gthread-2.0 lcms \
		openjpeg pcre png poppler pthread-stubs xcb xml2 \
		QtCore QtGui QtXml ${MODGETTEXT_WANTLIB}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+= --enable-xpdf-headers \
		--enable-poppler-cpp \
		--enable-utils \
		--enable-zlib

CONFIGURE_ENV+= CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

.include <bsd.port.mk>
