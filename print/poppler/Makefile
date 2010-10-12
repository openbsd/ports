# $OpenBSD: Makefile,v 1.34 2010/10/12 07:00:04 kili Exp $

COMMENT-main=	PDF rendering library
COMMENT-qt=	qt interface to PDF rendering library
COMMENT-qt4=	qt4 interface to PDF rendering library

V=		0.14.4
DISTNAME=	poppler-$V
CATEGORIES=	print
PKGNAME-main=	poppler-$V
FULLPKGNAME-qt=	poppler-qt-$V
FULLPKGNAME-qt4=poppler-qt4-$V

SHARED_LIBS +=	poppler              8.0
SHARED_LIBS +=	poppler-glib         7.0
SHARED_LIBS +=	poppler-qt           7.0
SHARED_LIBS +=	poppler-qt4          6.0

HOMEPAGE=	http://poppler.freedesktop.org/

MAINTAINER=	Matthias Kilian <kili@openbsd.org>

# GPLv2
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

QT4INC=

PSEUDO_FLAVORS=no_qt no_qt4
MULTI_PACKAGES=-main
FLAVOR-arm=no_qt4
FLAVOR-powerpc=no_qt4
FLAVOR?=${FLAVOR-${MACHINE_ARCH}}

WANTLIB=	expat freetype fontconfig jpeg m z stdc++

CXXFLAGS+=	-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng

.if empty(FLAVOR:L:Mno_qt)
MULTI_PACKAGES+=-qt
MODULES+=	x11/qt3 converters/libiconv
CXXFLAGS+=	-I${MODQT4_INCDIR}
.else
CONFIGURE_ARGS+=	--disable-poppler-qt
.endif

.if empty(FLAVOR:L:Mno_qt4)
MULTI_PACKAGES+=-qt4
MODULES+=	x11/qt4 converters/libiconv
CXXFLAGS+=	-I${MODQT3_INCDIR}
.else
CONFIGURE_ARGS+=	--disable-poppler-qt4
.endif

MODULES+=	devel/gettext

LIB_DEPENDS-main=${MODGETTEXT_LIB_DEPENDS} \
		::x11/gtk+2 \
		::graphics/lcms \
		::graphics/openjpeg \
		::textproc/libxml
LIB_DEPENDS-qt=	${MODQT3_LIB_DEPENDS} \
		${MODLIBICONV_LIB_DEPENDS} \
		::print/poppler
LIB_DEPENDS-qt4=QtCore,QtGui,QtXml::x11/qt4 \
		${MODGETTEXT_LIB_DEPENDS} \
		::print/poppler

WANTLIB-main=	${WANTLIB} Xcursor Xext Xfixes Xi Xinerama Xrandr gio-2.0 \
		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 pango-1.0 xml2 \
		pangocairo-1.0 pangoft2-1.0 pixman-1 gdk_pixbuf-2.0 openjpeg \
		X11 Xau Xcomposite Xdamage Xdmcp Xrender cairo pcre png \
		pthread-stubs xcb xcb-render xcb-render-util gdk-x11-2.0 lcms
WANTLIB-qt=	${WANTLIB} lcms openjpeg xml2 poppler png
WANTLIB-qt4=	${WANTLIB} ICE QtCore QtGui QtXml SM X11 Xau Xdmcp Xext Xi \
                Xinerama Xrender glib-2.0 gobject-2.0 gthread-2.0 lcms \
		openjpeg pcre png poppler pthread-stubs xcb xml2

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+= --enable-xpdf-headers \
		--disable-poppler-cpp \
		--disable-silent-rules \
		--disable-utils \
		--enable-zlib

CONFIGURE_ENV+=	CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include ${QT4INC}" \
		CFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

USE_LIBTOOL=	Yes
USE_X11=	Yes
USE_GMAKE=	Yes

.include <bsd.port.mk>
