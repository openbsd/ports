COMMENT=		simple Text Editor for GNOME

GNOME_PROJECT=		gnome-text-editor
GNOME_VERSION=		49.0

CATEGORIES=		editors

HOMEPAGE=		https://apps.gnome.org/TextEditor/

# GPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += adwaita-1 c editorconfig gio-2.0 glib-2.0 gobject-2.0 gtk-4
WANTLIB += gtksourceview-5 intl m pango-1.0 spelling-1

# gnu17
COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS= 	desktop-file-utils gtk-update-icon-cache yelp

BUILD_DEPENDS=		devel/appstream

LIB_DEPENDS=		editors/editorconfig-core-c \
			textproc/libspelling \
			x11/gnome/libadwaita \
			x11/gtksourceview5

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
