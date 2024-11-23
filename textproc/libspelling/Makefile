COMMENT=		spellcheck library for GTK 4

GNOME_PROJECT=		libspelling
GNOME_VERSION=		0.4.5

SHARED_LIBS += spelling-1                0.0 # 2.0.0

CATEGORIES=		textproc

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB += enchant-2 gio-2.0 glib-2.0 gobject-2.0 gtk-4 gtksourceview-5
WANTLIB += icuuc intl pango-1.0

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gi-docgen gobject-introspection vala

LIB_DEPENDS=		textproc/enchant2 \
			textproc/icu4c \
			x11/gtksourceview5

CONFIGURE_ARGS=		-Dsysprof=false

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
