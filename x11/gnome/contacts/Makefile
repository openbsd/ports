# $OpenBSD: Makefile,v 1.77 2019/07/07 11:20:50 ajacoutot Exp $

COMMENT=		contacts manager for GNOME

GNOME_PROJECT=		gnome-contacts
GNOME_VERSION=		3.32.1
REVISION=		0

CATEGORIES=		productivity

# GPLv2+
PERMIT_PACKAGE= 	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject ebackend-1.2 ebook-1.2
WANTLIB += ebook-contacts-1.2 ecal-1.2 edata-book-1.2 edataserver-1.2
WANTLIB += edataserverui-1.2 folks folks-eds gdk-3 gdk_pixbuf-2.0
WANTLIB += gee-0.8 gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-3
WANTLIB += goa-1.0 gobject-2.0 gtk-3 handy-0.0 ical intl m pango-1.0
WANTLIB += pangocairo-1.0 secret-1 soup-2.4 xml2
WANTLIB += ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		devel/meson \
			x11/gnome \
			devel/dconf

LIB_DEPENDS=		net/telepathy/folks \
			x11/gnome/desktop \
			x11/libhandy

MODGNOME_TOOLS=		desktop-file-utils docbook \
			gobject-introspection gtk-update-icon-cache vala

CONFIGURE_ARGS +=	-Dcheese=false \
			-Dtelepathy=false

.include <bsd.port.mk>
