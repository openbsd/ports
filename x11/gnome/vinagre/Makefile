# $OpenBSD: Makefile,v 1.82 2014/05/10 08:17:38 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	remote desktop viewer for GNOME

GNOME_PROJECT=	vinagre
GNOME_VERSION=	3.12.1
REVISION=	0

CATEGORIES=	net

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext atk-1.0 avahi-client avahi-common avahi-glib
WANTLIB += avahi-gobject avahi-ui-gtk3 c cairo cairo-gobject dbus-1
WANTLIB += dbus-glib-1 fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gthread-2.0 gtk-3 gtk-vnc-2.0
WANTLIB += gvnc-1.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread
WANTLIB += secret-1 spice-client-glib-2.0 spice-client-gtk-3.0
WANTLIB += telepathy-glib util vte2_90 xml2 z

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
