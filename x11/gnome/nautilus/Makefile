COMMENT=		GNOME file manager

GNOME_PROJECT=		nautilus
GNOME_VERSION=		46.1

SHARED_LIBS += nautilus-extension        3.0 # 4

CATEGORIES=		x11

# GPLv2 - LGPLv2 - GFPLv1.1
PERMIT_PACKAGE=		Yes

WANTLIB += adwaita-1 c cairo cloudproviders gdk_pixbuf-2.0 gexiv2
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-autoar-0 gnome-desktop-4
WANTLIB += gobject-2.0 graphene-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gtk-4 intl m pango-1.0 portal portal-gtk4 tracker-sparql-3.0

COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

BUILD_DEPENDS=		devel/gsettings-desktop-schemas

RUN_DEPENDS=		x11/gnome/gvfs \
			devel/gsettings-desktop-schemas

# needs tracker-miner-fs
RUN_DEPENDS +=		x11/gnome/tracker3-miners

LIB_DEPENDS=		graphics/libgexiv2 \
			multimedia/gstreamer1/plugins-base \
			sysutils/flatpak/libportal,-gtk4 \
			x11/gnome/autoar \
			x11/gnome/desktop,-gtk4 \
			x11/gnome/libadwaita \
			x11/gnome/libcloudproviders \
			x11/gnome/tracker3

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
