COMMENT=		user-friendly terminal emulator for GNOME

GNOME_PROJECT=		gnome-console
GNOME_VERSION=		42.2
REVISION=		0

CATEGORIES=		x11

# GPLv3
PERMIT_PACKAGE=		Yes

# C17
COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

WANTLIB += c gdk-3 gio-2.0 glib-2.0 gobject-2.0 gtk-3 gtop-2.0
WANTLIB += handy-1 intl m nautilus-extension pango-1.0 vte-2.91

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS= 	desktop-file-utils gtk-update-icon-cache

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			www/sassc

# src/kgx-tab.c, src/kgx-terminal.c, meson.build
BUILD_DEPENDS +=	devel/pcre2

LIB_DEPENDS=		devel/libgtop2 \
			devel/vte3 \
			x11/libhandy \
			x11/gnome/nautilus

# org.gnome.system.proxy
RUN_DEPENDS +=		devel/gsettings-desktop-schemas

.include <bsd.port.mk>
