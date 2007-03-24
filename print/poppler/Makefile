# $OpenBSD: Makefile,v 1.10 2007/03/24 13:21:26 espie Exp $

COMMENT-main=	"PDF rendering library"
COMMENT-qt=	"qt interface to PDF rendering library"
COMMENT-qt4=	"qt4 interface to PDF rendering library"

V=		0.5.4
DISTNAME=	poppler-$V
CATEGORIES=	print
PKGNAME-main=	poppler-$Vp0
FULLPKGNAME-qt=	poppler-qt-$Vp0
FULLPKGNAME-qt4=poppler-qt4-$V

SHARED_LIBS +=	poppler              2.0      # .1.0
SHARED_LIBS +=	poppler-glib         2.0      # .1.0
SHARED_LIBS +=	poppler-qt           2.0      # .1.0
SHARED_LIBS +=	poppler-qt4          0.0      # .1.0

HOMEPAGE=	http://poppler.freedesktop.org/

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

PSEUDO_FLAVORS=no_qt no_qt4
MULTI_PACKAGES=-main
FLAVOR?=

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
MAKE_FLAGS+=	POPPLER_QT4_CXXFLAGS='-pthread -I${X11BASE}/include -I${MODQT4_INCDIR}' \
		POPPLER_QT4_LIBS='-pthread -L${MODQT4_LIBDIR} -lQtCore -lQtGui -lQtXml' \
		qt4_subdir=qt4 \
		qt4_pc_file=poppler-qt4.pc \
		poppler_arthur=libpoppler-arthur.la \
		libpoppler_arthur_la_SOURCES="ArthurOutputDev.h ArthurOutputDev.cc" \
		arthur_includes='$$(POPPLER_QT4_CXXFLAGS)' \
		arthur_libs='$$(POPPLER_QT4_LIBS)'

MODULES+=	x11/qt4
.endif

WANTLIB=	ICE SM X11 Xext Xrender cairo freetype fontconfig \
		glitz m png z

LIB_DEPENDS-qt=	${MODQT3_LIB_DEPENDS} poppler::print/poppler
LIB_DEPENDS-qt4=QtCore,QtGui,QtXml::x11/qt4 poppler::print/poppler

MODULES+=	devel/gettext

LIB_DEPENDS-main=${MODGETTEXT_LIB_DEPENDS} \
		gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2 
WANTLIB-main=	${WANTLIB} glib-2.0 gmodule-2.0 gobject-2.0 \
		pango-1.0 pangocairo-1.0 pangoft2-1.0

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS= --enable-xpdf-headers \
		--disable-poppler-qt \
		--disable-poppler-qt4 \
		--disable-utils \
		--enable-zlib

CONFIGURE_ENV+=	CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include"

FAKE_FLAGS=	${MAKE_FLAGS} DESTDIR=${WRKINST}

USE_LIBTOOL=	Yes
USE_X11=	Yes
USE_GMAKE=	Yes

.include <bsd.port.mk>
