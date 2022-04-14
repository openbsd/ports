# $OpenBSD: Makefile,v 1.90 2022/04/14 13:28:46 ajacoutot Exp $

COMMENT=		contacts manager for GNOME

GNOME_PROJECT=		gnome-contacts
GNOME_VERSION=		42.0

CATEGORIES=		productivity

# GPLv2+
PERMIT_PACKAGE= 	Yes

WANTLIB += adwaita-1 c cairo edataserver-1.2 folks folks-eds gdk_pixbuf-2.0
WANTLIB += gee-0.8 gio-2.0 glib-2.0 goa-1.0 gobject-2.0 gtk-4
WANTLIB += intl m pango-1.0

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		devel/meson \
			x11/gnome \
			devel/dconf

DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS=		net/telepathy/folks \
			x11/gnome/libadwaita

MODGNOME_TOOLS=		desktop-file-utils docbook \
			gobject-introspection gtk-update-icon-cache vala

# XXX needs libportal
CONFIGURE_ARGS +=	-Dcamera=false

.include <bsd.port.mk>
