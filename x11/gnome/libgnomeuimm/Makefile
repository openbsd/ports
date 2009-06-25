# $OpenBSD: Makefile,v 1.10 2009/06/25 00:38:38 sthen Exp $

COMMENT=		C++ interface for libgnomeui

GNOME_PROJECT=		libgnomeuimm
GNOME_VERSION=		2.24.0
PKGNAME=		${DISTNAME}p3

SHARED_LIBS +=	gnomeuimm-2.6        0.0      # .1.4

HOMEPAGE=		http://gtkmm.sourceforge.net/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 atkmm-1.6 bonobo-2 \
		bonobo-activation bonoboui-2 cairo cairomm-1.0 crypto \
		dbus-1 dbus-glib-1 expat fontconfig freetype gailutil \
		gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gdkmm-2.4 gio-2.0 \
		giomm-2.4 glade-2.0 glib-2.0 glibmm-2.4 glitz gmodule-2.0 \
		gnome-2 gnome-keyring gnomecanvas-2 gnomevfs-2 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 gtkmm-2.4 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pangomm-1.4 pcre pixman-1 png popt sigc-2.0 \
		ssl util xml2 z avahi-client avahi-common avahi-glib

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		gconfmm-2.6::devel/gconfmm \
			glademm-2.4::devel/libglademm \
			gnomecanvasmm-2.6::x11/gnome/libgnomecanvasmm \
			gnomemm-2.6::x11/gnome/libgnomemm \
			gnomeui-2::x11/gnome/libgnomeui \
			gnomevfsmm-2.6::x11/gnome/vfsmm

USE_X11=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static

.include <bsd.port.mk>	
