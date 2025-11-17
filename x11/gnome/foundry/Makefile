COMMENT=		framework for developer tooling

GNOME_PROJECT=		foundry
GNOME_VERSION=		1.0.1

CATEGORIES=		devel

SHARED_LIBS += foundry-1                 0.0 # 1.0.0
SHARED_LIBS += foundry-gtk-1             0.0 # 1.0.0

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += c cmark dex-1 editorconfig gio-2.0 git2 glib-2.0 gobject-2.0
WANTLIB += gom-1.0 gtk-4 gtksourceview-5 intl json-glib-1.0 m
WANTLIB += pango-1.0 peas-2 soup-3.0 spelling-1 template_glib-1.0
WANTLIB += vte-2.91-gtk4 webkitgtk-6.0 xml2

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection

BUILD_DEPENDS=		devel/appstream

LIB_DEPENDS=		devel/json-glib \
			devel/libgit2/libgit2 \
			devel/libpeas2 \
			devel/template-glib \
			devel/vte3,-gtk4 \
			editors/editorconfig-core-c \
			textproc/cmark \
			textproc/libspelling \
			www/webkitgtk4,webkitgtk60 \
			x11/gnome/gom \
			x11/gnome/libdex \
			x11/gtksourceview5

CONFIGURE_ARGS=		-Dfeature-flatpak=false

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
