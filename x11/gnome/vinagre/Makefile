# $OpenBSD: Makefile,v 1.69 2013/03/11 11:46:12 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	remote desktop viewer for GNOME

GNOME_PROJECT=	vinagre
GNOME_VERSION=	3.6.2

CATEGORIES=	net

HOMEPAGE=	http://projects.gnome.org/vinagre/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xrender atk-1.0 avahi-client avahi-common avahi-glib
WANTLIB += avahi-gobject avahi-ui-gtk3 c cairo cairo-gobject dbus-1
WANTLIB += dbus-glib-1 expat fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gthread-2.0 gtk-3 gtk-vnc-2.0
WANTLIB += gvnc-1.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
WANTLIB += png pthread pthread-stubs secret-1 spice-client-glib-2.0
WANTLIB += spice-client-gtk-3.0 telepathy-glib util vte2_90 xcb
WANTLIB += xcb-render xcb-shm xml2 z Xext

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

RUN_DEPENDS=	misc/shared-mime-info \
		x11/rdesktop

LIB_DEPENDS=	devel/vte3 \
		net/avahi,-gtk3,no_mono,no_qt3,no_qt4 \
		net/telepathy/telepathy-glib \
		x11/gnome/libsecret \
		x11/gtk-vnc \
		x11/spice-gtk

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGNOME_TOOLS= 	yelp

.include <bsd.port.mk>
