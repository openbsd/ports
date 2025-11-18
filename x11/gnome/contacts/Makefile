COMMENT=		contacts manager for GNOME

GNOME_PROJECT=		gnome-contacts
GNOME_VERSION=		49.0

CATEGORIES=		productivity

HOMEPAGE=		https://apps.gnome.org/Contacts/

# GPLv2+
PERMIT_PACKAGE= 	Yes

WANTLIB += adwaita-1 c ebook-contacts-1.2 edataserver-1.2 folks
WANTLIB += folks-eds gdk_pixbuf-2.0 gee-0.8 gio-2.0 glib-2.0 goa-1.0
WANTLIB += gobject-2.0 gstreamer-1.0 gtk-4 intl pango-1.0 portal
WANTLIB += portal-gtk4 qrencode

COMPILER=		base-clang ports-gcc base-gcc
COMPILER_LANGS=		c

MODULES=		devel/meson \
			x11/gnome \
			devel/dconf

MODGNOME_TOOLS=		desktop-file-utils docbook \
			gobject-introspection gtk-update-icon-cache vala

BUILD_DEPENDS=		devel/appstream \
			lang/vala,,-valadoc \
			x11/blueprint-compiler

LIB_DEPENDS=		graphics/libqrencode \
			net/telepathy/folks \
			sysutils/flatpak/libportal \
			sysutils/flatpak/libportal,-gtk4 \
			x11/gnome/libadwaita

DEBUG_PACKAGES=		${BUILD_PACKAGES}

# XXX src/core/libcontactscore.a.p/contacts-chunk.c:106:2: error:
# void function 'contacts_chunk_save_to_persona' should not return a value [-Wreturn-type]
CFLAGS +=		-Wno-return-type

# XXX Camera support for avatar
# multimedia/gstreamer1/plugins-rs (gtk4)
# multimedia/pipewire/pipewire (libgstpipewire)

.include <bsd.port.mk>
