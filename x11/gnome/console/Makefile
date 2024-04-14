COMMENT=		user-friendly terminal emulator for GNOME

GNOME_PROJECT=		gnome-console
GNOME_VERSION=		46.0

CATEGORIES=		x11

# GPLv3
PERMIT_PACKAGE=		Yes

# C17
COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

WANTLIB += adwaita-1 c gio-2.0 glib-2.0 gobject-2.0 gtk-4 gtop-2.0
WANTLIB += intl m pango-1.0 pangocairo-1.0 vte-2.91-gtk4

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS= 	desktop-file-utils gtk-update-icon-cache

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			www/sassc

# src/kgx-tab.c, src/kgx-terminal.c, meson.build
BUILD_DEPENDS +=	devel/pcre2

LIB_DEPENDS=		devel/libgtop2 \
			devel/vte3,-gtk4 \
			x11/gnome/libadwaita

# org.gnome.system.proxy
RUN_DEPENDS +=		devel/gsettings-desktop-schemas

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
