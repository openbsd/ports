# $OpenBSD: Makefile,v 1.8 2006/02/20 19:27:24 steven Exp $

NOT_FOR_ARCHS=	${LP64_ARCHS}

COMMENT=	"Quicken-like money and finance manager"
DISTNAME=	gnucash-1.8.12
PKGNAME=	${DISTNAME}p0
DOCVER=		1.8.5
CATEGORIES=	x11/gnome productivity


DISTFILES=	${DISTNAME}${EXTRACT_SUFX}

MASTER_SITE_GNUCASH=	http://www.gnucash.org/pub/gnucash/ \
		http://www.linas.org/pub/gnucash/gnucash/
MASTER_SITES= ${MASTER_SITE_GNUCASH:=sources/stable/} \
		${MASTER_SITE_GNOME:=sources/gnucash/1.8/} \
		 ${MASTER_SITE_SOURCEFORGE:=gnucash/}

HOMEPAGE=	http://www.gnucash.org/

SHARED_LIBS=	gnc-app-file-gnome	0.0


WANTLIB=	db gnomesupport wrap gnomecanvaspixbuf 
WANTLIB+=	ORBitCosNaming ICE glib audiofile IIOP jpeg z
WANTLIB+=	ORBit ungif X11 oaf freetype gconf-1 gmodule SM
WANTLIB+=	Xext esd tiff xml png gdk_imlib guile guile-ltdl Xi
WANTLIB+=	gconf-gtk-1 art_lgpl ORBitutil gtk gdk ltdl m ghttp gnomeui
WANTLIB+=	gdk_pixbuf gnomeprint gtkhtml-1.1.0.0 popt bonobo bonobox

MAINTAINER=	Todd T. Fries <todd@OpenBSD.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=		Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext

CONFIGURE_STYLE= gnu

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static
CONFIGURE_ARGS+= ${ENABLE_SHARED} \
		--with-glib-config=${LOCALBASE}/bin/glib-config \
		--enable-nls \
		--without-included-gettext \
		--disable-guppi \
		--disable-xim \
		--with-libglade-config=${LOCALBASE}/bin/libglade-config
CONFIGURE_ENV+=  CPPFLAGS="${CFLAGS}" CFLAGS="${CFLAGS}" \
		LDFLAGS="${LDFLAGS}" \
		LIBS="${LDFLAGS}"

LIB_DEPENDS=	glade.4,glade-gnome::devel/libglade,gnome \
		gnome.36::x11/gnome/libs \
		gal.16::devel/gal \
		gnomeprint.16::x11/gnome/print \
		gdk_pixbuf.2::graphics/gdk-pixbuf \
		lib/db4/db.=4:db-4.*:databases/db/v4 \
		gwrap-glib,gwrap-wct::devel/g-wrap \
		gtkhtml-1.1.3.5::www/gtkhtml
BUILD_DEPENDS=	swig::devel/swig \
		gnome-print::x11/gnome/print \
		guppi::graphics/Guppi \
		db::databases/db/v4 \
		::devel/slib-guile \
		::devel/libtool \
		::lang/guile \
		::devel/pkgconfig

RUN_DEPENDS+=	::devel/slib \
		::devel/libtool \
		::lang/guile \
		::devel/pkgconfig

CFLAGS=-I${LOCALBASE}/include -I${X11BASE}/include -I${LOCALBASE}/share/libtool/libltdl -I${LOCALBASE}/include/libgtkhtml-1.1
LDFLAGS=-pthread -L${LOCALBASE}/lib -L${X11BASE}/lib -lintl -liconv

LIBPATH=/usr/lib:/usr/X11R6/lib:${LOCALBASE}/lib

MAKE_FLAGS += DB_LIBS=-ldb LDFLAGS="${LDFLAGS}" LIBS="${LDFLAGS}"
MAKE_ENV += LIBRARY_PATH="${LIBPATH}"
MAKE_ENV += LD_LIBRARY_PATH="${LIBPATH}"

.include <bsd.port.mk>
