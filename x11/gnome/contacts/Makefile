# $OpenBSD: Makefile,v 1.74 2019/01/06 14:12:57 jasper Exp $

COMMENT=		contacts manager for GNOME

GNOME_PROJECT=		gnome-contacts
GNOME_VERSION=		3.30.2

CATEGORIES=		productivity

# GPLv2+
PERMIT_PACKAGE_CDROM= 	Yes

WANTLIB += atk-1.0 c cairo edataserver-1.2 edataserverui-1.2 folks
WANTLIB += folks-eds gdk-3 gdk_pixbuf-2.0 gee-0.8 gio-2.0 glib-2.0
WANTLIB += gnome-desktop-3 goa-1.0 gobject-2.0 gtk-3 intl m pango-1.0
WANTLIB += ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		devel/meson \
			x11/gnome \
			devel/dconf

LIB_DEPENDS=		net/telepathy/folks \
			x11/gnome/desktop

MODGNOME_TOOLS=		desktop-file-utils docbook \
			gobject-introspection vala

CONFIGURE_ARGS +=	-Dcheese=false \
			-Dtelepathy=false

.include <bsd.port.mk>
