# $OpenBSD: Makefile,v 1.93 2015/05/02 14:24:12 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		remote desktop viewer for GNOME

GNOME_PROJECT=		vinagre
GNOME_VERSION=		3.16.0
REVISION=		1

CATEGORIES=		net

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 atk-1.0 avahi-client avahi-common avahi-glib avahi-gobject
WANTLIB += avahi-ui-gtk3 c cairo cairo-gobject dbus-1 dbus-glib-1
WANTLIB += fontconfig freerdp-channels freerdp-codec freerdp-core
WANTLIB += freerdp-gdi freerdp-kbd freerdp-rail freerdp-utils
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gnutls
WANTLIB += gobject-2.0 gthread-2.0 gtk-3 gtk-vnc-2.0 gvnc-1.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread secret-1
WANTLIB += spice-client-glib-2.0 spice-client-gtk-3.0 telepathy-glib
WANTLIB += util vte-2.91 xml2 z

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/vte3 \
			net/avahi,-gtk3,no_mono,no_qt3,no_qt4 \
			net/telepathy/telepathy-glib \
			x11/freerdp \
			x11/gnome/libsecret \
			x11/gtk-vnc \
			x11/spice-gtk

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache \
			shared-mime-info yelp

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69

.include <bsd.port.mk>
