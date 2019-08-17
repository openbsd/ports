# $OpenBSD: Makefile,v 1.113 2019/08/17 10:27:49 ajacoutot Exp $

COMMENT=		remote desktop viewer for GNOME

GNOME_PROJECT=		vinagre
GNOME_VERSION=		3.22.0
REVISION=		9

CATEGORIES=		net

# GPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += X11 atk-1.0 avahi-client avahi-common avahi-glib avahi-gobject
WANTLIB += avahi-ui-gtk3 c cairo cairo-gobject dbus-1 dbus-glib-1
WANTLIB += freerdp2 gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gnutls
WANTLIB += gobject-2.0 gthread-2.0 gtk-3 gtk-vnc-2.0 gvnc-1.0
WANTLIB += intl m pango-1.0 pangocairo-1.0 pcre2-8 pthread secret-1
WANTLIB += spice-client-glib-2.0 spice-client-gtk-3.0 telepathy-glib
WANTLIB += util vte-2.91 xml2 z

MODULES=		devel/dconf \
			x11/gnome

LIB_DEPENDS=		devel/vte3 \
			net/avahi,,-gtk3 \
			net/telepathy/telepathy-glib \
			x11/freerdp \
			x11/gnome/libsecret \
			x11/gtk-vnc \
			x11/spice-gtk

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache \
			shared-mime-info yelp

# for clang, because it catches non-constant formats in printf-like routines
CONFIGURE_ARGS +=	--enable-compile-warnings=minimum

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
