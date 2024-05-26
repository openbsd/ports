COMMENT=		GNOME backend implementation for xdg-desktop-portal

GNOME_PROJECT=		xdg-desktop-portal-gnome
GNOME_VERSION=		46.2

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += X11 adwaita-1 c cairo fontconfig gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gnome-bg-4 gnome-desktop-4 gobject-2.0 graphene-1.0
WANTLIB += gtk-4 intl m wayland-client

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

BUILD_DEPENDS=		sysutils/flatpak/xdg-desktop-portal-gtk

LIB_DEPENDS=		x11/gnome/desktop,-gtk4 \
			x11/gnome/libadwaita

RUN_DEPENDS=		devel/desktop-file-utils \
			sysutils/flatpak/xdg-desktop-portal-gtk

# XXX if we don't specify it, we actually need systemd to get systemduserunitdir
# from pkg-config(1)
CONFIGURE_ARGS +=	-Dsystemduserunitdir=${PREFIX}/lib/systemd/user

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
