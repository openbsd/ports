# $OpenBSD: Makefile,v 1.6 2005/12/29 22:44:00 sturm Exp $

NOT_FOR_ARCHS=	${LP64_ARCHS}

COMMENT=	"Quicken-like money and finance manager"
DISTNAME=	gnucash-1.8.11
PKGNAME=	${DISTNAME}p1
CATEGORIES=	x11/gnome productivity

MASTER_SITE_GNUCASH=	http://www.gnucash.org/pub/gnucash/ \
		ftp://ftp.gnucash.org/pub/gnucash/ \
		http://www.linas.org/pub/gnucash/gnucash/
MASTER_SITES= ${MASTER_SITE_GNUCASH:=sources/stable/} \
		${MASTER_SITE_GNOME:=sources/gnucash/1.8/}

HOMEPAGE=	http://www.gnucash.org/

WANTLIB=	db gnomesupport wrap gnomecanvaspixbuf 
WANTLIB+=	ORBitCosNaming ICE gwrap-wct glib audiofile IIOP jpeg z
WANTLIB+=	iconv ORBit ungif X11 oaf freetype intl gconf-1 gmodule SM
WANTLIB+=	Xext esd gwrap-glib tiff xml png gdk_imlib guile Xi
WANTLIB+=	gconf-gtk-1 art_lgpl ORBitutil gtk gdk ltdl m ghttp gnomeui
WANTLIB+=	gdk_pixbuf gnomeprint gtkhtml-1.1.0.0

MAINTAINER=	Todd T. Fries <todd@OpenBSD.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=		Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_ARGS+= ${ENABLE_SHARED} \
		--with-glib-config=${LOCALBASE}/bin/glib-config \
		--enable-nls --without-included-gettext \
		--disable-guppi --with-libglade-config=${LOCALBASE}/bin/libglade-config --disable-xim
CONFIGURE_ENV+=  CPPFLAGS="${CFLAGS}" CFLAGS="${CFLAGS}" \
		LDFLAGS="${LDFLAGS}" \
		LIBS="${LDFLAGS}"

LIB_DEPENDS=	glade.4,glade-gnome::devel/libglade,gnome \
		gnome.36::x11/gnome/libs \
		gal.16::devel/gal \
		gnomeprint.16::x11/gnome/print \
		gdk_pixbuf.2::graphics/gdk-pixbuf \
		lib/db4/db.=4:db-4.*:databases/db/v4 \
		gw-glib,gw-standard,gw-wct,gwrap-glib,gwrap-wct::devel/g-wrap \
		gtkhtml-1.1.3.5::www/gtkhtml
BUILD_DEPENDS=	swig::devel/swig \
		gnome-print::x11/gnome/print \
		guppi::graphics/Guppi \
		db::databases/db/v4 \
		::devel/slib \
		::devel/libtool \
		::lang/guile \
		::devel/pkgconfig

RUN_DEPENDS+=	::devel/slib \
		::devel/libtool \
		::lang/guile \
		::devel/pkgconfig

CFLAGS=-I${LOCALBASE}/include -I${X11BASE}/include -I${LOCALBASE}/share/libtool/libltdl -I${LOCALBASE}/include/libgtkhtml-1.1
LDFLAGS=-pthread -L${LOCALBASE}/lib -L${X11BASE}/lib -lintl -liconv

LIBPATH=/usr/lib:/usr/X11R6/lib:/usr/local/lib

MAKE_FLAGS += DB_LIBS=-ldb LDFLAGS="${LDFLAGS}" LIBS="${LDFLAGS}"
MAKE_ENV += LIBRARY_PATH="${LIBPATH}"
MAKE_ENV += LD_LIBRARY_PATH="${LIBPATH}"

.include <bsd.port.mk>
