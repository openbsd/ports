# $OpenBSD: Makefile,v 1.84 2014/10/06 08:32:02 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	remote desktop viewer for GNOME

GNOME_PROJECT=	vinagre
GNOME_VERSION=	3.14.0

CATEGORIES=	net

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 avahi-client avahi-common avahi-glib avahi-gobject
WANTLIB += avahi-ui-gtk3 c cairo cairo-gobject dbus-1 dbus-glib-1
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-3 gtk-vnc-2.0 gvnc-1.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread secret-1
WANTLIB += spice-client-glib-2.0 spice-client-gtk-3.0 telepathy-glib
WANTLIB += util vte-2.91 xml2 z

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

RUN_DEPENDS=	x11/freerdp

LIB_DEPENDS=	devel/vte3 \
		net/avahi,-gtk3,no_mono,no_qt3,no_qt4 \
		net/telepathy/telepathy-glib \
		x11/gnome/libsecret \
		x11/gtk-vnc \
		x11/spice-gtk

MODGNOME_TOOLS=	desktop-file-utils gtk-update-icon-cache shared-mime-info yelp

.include <bsd.port.mk>
