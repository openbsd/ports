# build time requirement for WebKit2-4.0 introspection
#USE_WXNEEDED=		Yes

COMMENT=		read documentation

GNOME_PROJECT=		manuals
GNOME_VERSION=		49.0

CATEGORIES=		textproc

HOMEPAGE=		https://apps.gnome.org/en/Manuals/

# GPLv3+
PERMIT_PACKAGE=		Yes

WANTLIB += adwaita-1 c dex-1 foundry-1 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-4 intl panel-1 pango-1.0 webkitgtk-6.0

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

BUILD_DEPENDS=		devel/appstream

LIB_DEPENDS=		www/webkitgtk4,webkitgtk60 \
			x11/gnome/foundry \
			x11/gnome/libpanel

# for convenience
RUN_DEPENDS +=		x11/gnome/devel-docs

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
