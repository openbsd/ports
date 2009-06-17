# $OpenBSD: Makefile,v 1.30 2009/06/17 01:30:16 sthen Exp $

COMMENT=		GNOME Application Libs

VERSION=		2.5.3
API_VERSION=		2.6
DISTNAME=		gal-${VERSION}
PKGNAME=		gal2-${VERSION}p4

SHARED_LIBS +=	gal-a11y-2.4         1.0      # .1.0
SHARED_LIBS +=	gal-2.4              1.0      # .1.0

CATEGORIES=    		devel x11/gnome

HOMEPAGE=		http://www.gnome.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 atk-1.0 avahi-client avahi-common
WANTLIB += avahi-glib bonobo-2 bonobo-activation bonoboui-2 cairo
WANTLIB += crypto dbus-1 dbus-glib-1 expat fontconfig freetype
WANTLIB += gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring
WANTLIB += gnomecanvas-2 gnomeprint-2-2 gnomevfs-2 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png popt ssl util xml2 z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gal/2.5/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext \
			textproc/intltool

LIB_DEPENDS=		gnomeui-2::x11/gnome/libgnomeui \
			gnomeprintui-2-2::x11/gnome/libgnomeprintui

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS=		VERSION API_VERSION

.include <bsd.port.mk>
