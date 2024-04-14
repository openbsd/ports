# $OpenBSD: Makefile,v 1.101 2024/04/14 14:15:55 ajacoutot Exp $

COMMENT=		contacts manager for GNOME

GNOME_PROJECT=		gnome-contacts
GNOME_VERSION=		46.0

CATEGORIES=		productivity

# GPLv2+
PERMIT_PACKAGE= 	Yes

WANTLIB += adwaita-1 c cairo ebook-contacts-1.2 edataserver-1.2
WANTLIB += folks folks-eds gdk_pixbuf-2.0 gee-0.8 gio-2.0 glib-2.0
WANTLIB += goa-1.0 gobject-2.0 gtk-4 intl m pango-1.0 portal qrencode

COMPILER=		base-clang ports-gcc base-gcc

MODULES=		devel/meson \
			x11/gnome \
			devel/dconf

MODGNOME_TOOLS=		desktop-file-utils docbook \
			gobject-introspection gtk-update-icon-cache vala

BUILD_DEPENDS=		sysutils/flatpak/libportal,-gtk4

LIB_DEPENDS=		graphics/libqrencode \
			net/telepathy/folks \
			sysutils/flatpak/libportal \
			x11/gnome/libadwaita

RUN_DEPENDS=		sysutils/flatpak/libportal,-gtk4

DEBUG_PACKAGES=		${BUILD_PACKAGES}

# XXX src/core/libcontactscore.a.p/contacts-chunk.c:106:2: error:
# void function 'contacts_chunk_save_to_persona' should not return a value [-Wreturn-type]
CFLAGS +=		-Wno-return-type

.include <bsd.port.mk>
