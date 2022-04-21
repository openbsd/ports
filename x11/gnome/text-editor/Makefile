COMMENT=		simple Text Editor for GNOME

GNOME_PROJECT=		gnome-text-editor
GNOME_VERSION=		42.1

CATEGORIES=		editors

# GPLv3
PERMIT_PACKAGE=		Yes

# gnu17
COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

WANTLIB += adwaita-1 c cairo enchant-2 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-4 gtksourceview-5 icuuc intl m pango-1.0 pcre

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS= 	desktop-file-utils gtk-update-icon-cache yelp

LIB_DEPENDS=		textproc/enchant2 \
			x11/gnome/libadwaita \
			x11/gtksourceview5

.include <bsd.port.mk>
