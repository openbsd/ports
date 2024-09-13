COMMENT=		spell-checking library for GTK+

GNOME_PROJECT=		gspell
GNOME_VERSION=		1.14.0

CATEGORIES=		textproc

SHARED_LIBS += gspell-1                  5.0 # 3

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE=		Yes

WANTLIB += c enchant-2 gio-2.0 glib-2.0 gobject-2.0 gtk-3 icuuc
WANTLIB += intl pango-1.0

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

CONFIGURE_ARGS=		-Dgtk_doc=false \
			-Dinstall_tests=false

LIB_DEPENDS=		textproc/enchant2 \
			textproc/icu4c \
			x11/gtk+3

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
