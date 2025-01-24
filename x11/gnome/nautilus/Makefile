COMMENT=		GNOME file manager

GNOME_PROJECT=		nautilus
GNOME_VERSION=		47.1
REVISION=		0

SHARED_LIBS += nautilus-extension        3.0 # 4

CATEGORIES=		x11

HOMEPAGE=		https://apps.gnome.org/Nautilus/

# GPLv2 - LGPLv2 - GFPLv1.1
PERMIT_PACKAGE=		Yes

WANTLIB += X11 adwaita-1 c cairo cloudproviders gdk_pixbuf-2.0
WANTLIB += gexiv2 gio-2.0 glib-2.0 gmodule-2.0 gnome-autoar-0
WANTLIB += gnome-desktop-4 gobject-2.0 graphene-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gtk-4 intl m pango-1.0 portal portal-gtk4
WANTLIB += tinysparql-3.0 wayland-client

COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

BUILD_DEPENDS=		devel/gsettings-desktop-schemas

RUN_DEPENDS=		x11/gnome/gvfs \
			devel/gsettings-desktop-schemas

# org.freedesktop.Tracker3.Miner.Files
RUN_DEPENDS +=		x11/gnome/localsearch

# create "well known" user directories and default gtk bookmarks
RUN_DEPENDS +=		x11/xdg-user-dirs-gtk

LIB_DEPENDS=		graphics/libgexiv2 \
			multimedia/gstreamer1/plugins-base \
			sysutils/flatpak/libportal,-gtk4 \
			x11/gnome/autoar \
			x11/gnome/desktop,-gtk4 \
			x11/gnome/libadwaita \
			x11/gnome/libcloudproviders \
			x11/gnome/tinysparql

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache

MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

CONFIGURE_ARGS=		-Dselinux=false \
			-Dpackagekit=false

# XXX test/automated/displayless/meson.build:45:2:
# ERROR: List item must be one of <class 'str'>, not <class 'list'>
CONFIGURE_ARGS +=	-Dtests=none

DEBUG_PACKAGES=		${BUILD_PACKAGES}

# needs 'org.gnome.nautilus.preferences'
TEST_DEPENDS=		${BASE_PKGPATH}
TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
