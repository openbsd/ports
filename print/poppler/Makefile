# $OpenBSD: Makefile,v 1.5 2006/11/21 10:10:01 espie Exp $

COMMENT-main=	"PDF rendering library"
COMMENT-qt=	"qt interface to PDF rendering library"

V=		0.5.3
DISTNAME=	poppler-$V
CATEGORIES=	print
PKGNAME-main=	poppler-$Vp0
FULLPKGNAME-qt=	poppler-qt-$Vp0

SHARED_LIBS +=	poppler              1.0      # .1.0
SHARED_LIBS +=	poppler-glib         1.0      # .1.0
SHARED_LIBS +=	poppler-qt           0.0      # .1.0

HOMEPAGE=	http://poppler.freedesktop.org/

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

PSEUDO_FLAVORS=no_qt
MULTI_PACKAGES=-main
FLAVOR?=

.if empty(FLAVOR:L:Mno_qt)
MULTI_PACKAGES+=-qt

# the configure test for qt is highly bogus, so instead, we keep it disabled
# and override the correct variables so that it gets built anyways.

MAKE_FLAGS=	POPPLER_QT_CXXFLAGS='-pthread -I${MODQT_INCDIR}' \
		POPPLER_QT_LIBS='-pthread -L${MODQT_LIBDIR} -lqt-mt' \
		qt_subdir=qt \
		qt_pc_file=poppler-qt.pc

MODULES+=	x11/qt3
.endif

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig

WANTLIB=	freetype fontconfig jpeg z 

LIB_DEPENDS-qt=	${MODQT_LIB_DEPENDS} poppler::print/poppler

MODULES+=	devel/gettext

LIB_DEPENDS-main=${MODGETTEXT_LIB_DEPENDS} \
		gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2 
WANTLIB-main=	${WANTLIB} Xrender png X11 m Xext glitz \
		gmodule-2.0 cairo \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		gobject-2.0 glib-2.0

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS= --enable-xpdf-headers \
		--disable-poppler-qt \
		--disable-poppler-qt4 \
		--disable-utils \
		--enable-zlib

CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include"

FAKE_FLAGS=	${MAKE_FLAGS} DESTDIR=${WRKINST}

USE_LIBTOOL=	Yes
USE_X11=	Yes
USE_GMAKE=	Yes

.include <bsd.port.mk>
