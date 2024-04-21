COMMENT=		remote desktop client for GNOME

GNOME_PROJECT=		gnome-connections
GNOME_VERSION=		46.0

CATEGORIES=		net

# GPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += c cairo freerdp-client2 freerdp2 gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 gtk-vnc-2.0 gvnc-1.0
WANTLIB += gvncpulse-1.0 handy-1 intl m secret-1 winpr2 xml2

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection yelp \
			gtk-update-icon-cache shared-mime-info vala

LIB_DEPENDS=		x11/freerdp \
			x11/gnome/libsecret \
			x11/gtk-vnc \
			x11/libhandy

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
