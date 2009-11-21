# $OpenBSD: Makefile,v 1.30 2009/11/21 21:57:50 kili Exp $

COMMENT-main=	PDF rendering library
COMMENT-qt=	qt interface to PDF rendering library
COMMENT-qt4=	qt4 interface to PDF rendering library

V=		0.12.2
DISTNAME=	poppler-$V
CATEGORIES=	print
PKGNAME-main=	poppler-$V
FULLPKGNAME-qt=	poppler-qt-$V
FULLPKGNAME-qt4=poppler-qt4-$V

SHARED_LIBS +=	poppler              7.0
SHARED_LIBS +=	poppler-glib         6.0
SHARED_LIBS +=	poppler-qt           6.0
SHARED_LIBS +=	poppler-qt4          5.0

HOMEPAGE=	http://poppler.freedesktop.org/

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

.if empty(FLAVOR:L:Mno_qt)
MULTI_PACKAGES+=-qt

# the configure test for qt is highly bogus, so instead, we keep it disabled
# and override the correct variables so that it gets built anyways.

MAKE_FLAGS+=	POPPLER_QT_CXXFLAGS='-pthread -I${MODQT3_INCDIR}' \
		POPPLER_QT_LIBS='-pthread -L${MODQT3_LIBDIR} -lqt-mt' \
		qt_subdir=qt \
		qt_pc_file=poppler-qt.pc

MODULES+=	x11/qt3 
.endif
.if empty(FLAVOR:L:Mno_qt4)
MULTI_PACKAGES+=-qt4
MAKE_FLAGS+=	POPPLER_QT4_CFLAGS='-pthread -I${X11BASE}/include -I${MODQT4_INCDIR}' \
		POPPLER_QT4_LIBS='-pthread -L${MODQT4_LIBDIR} -lQtCore -lQtGui -lQtXml' \
		qt4_subdir=qt4 \
		qt4_pc_file=poppler-qt4.pc \
		poppler_arthur=libpoppler-arthur.la \
		libpoppler_arthur_la_SOURCES="ArthurOutputDev.h ArthurOutputDev.cc" \
		am_libpoppler_arthur_la_OBJECTS=ArthurOutputDev.lo \
		arthur_includes='$$(POPPLER_QT4_CXXFLAGS)' \
		arthur_libs='$$(POPPLER_QT4_LIBS)'

MODULES+=	x11/qt4
QT4INC=		-I${MODQT4_INCDIR}
.endif

WANTLIB=	expat freetype fontconfig jpeg m z

MODULES+=	devel/gettext

LIB_DEPENDS-main=${MODGETTEXT_LIB_DEPENDS} \
		gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2 \
		lcms::graphics/lcms \
		xml2::textproc/libxml
LIB_DEPENDS-qt=	${MODQT3_LIB_DEPENDS} poppler::print/poppler
LIB_DEPENDS-qt4=QtCore,QtGui,QtXml::x11/qt4 poppler::print/poppler

WANTLIB-main=	${WANTLIB} Xcursor Xext Xfixes Xi Xinerama Xrandr gio-2.0 \
		glib-2.0 gmodule-2.0 gobject-2.0 pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pixman-1 \
		X11 Xau Xcomposite Xdamage Xdmcp Xrender cairo glitz pcre png \
		pthread-stubs xcb
WANTLIB-qt=	${WANTLIB} iconv lcms xml2
WANTLIB-qt4=	${WANTLIB} iconv lcms xml2

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS= --enable-xpdf-headers \
		--disable-poppler-qt \
		--disable-poppler-qt4 \
		--disable-utils \
		--enable-zlib

CONFIGURE_ENV+=	CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include ${QT4INC}" \
		CFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		MOCQT4=${MODQT4_MOC}

USE_LIBTOOL=	Yes
USE_X11=	Yes
USE_GMAKE=	Yes

.include <bsd.port.mk>
