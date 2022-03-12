# $OpenBSD: Makefile,v 1.88 2022/03/12 09:37:54 ajacoutot Exp $

COMMENT=		contacts manager for GNOME

GNOME_PROJECT=		gnome-contacts
GNOME_VERSION=		41.0
REVISION=		0

CATEGORIES=		productivity

# GPLv2+
PERMIT_PACKAGE= 	Yes

WANTLIB += atk-1.0 c cairo cheese cheese-gtk edataserver-1.2 edataserverui-1.2
WANTLIB += folks folks-eds gdk-3 gdk_pixbuf-2.0 gee-0.8 gio-2.0
WANTLIB += glib-2.0 gnome-desktop-3 goa-1.0 gobject-2.0 gtk-3
WANTLIB += handy-1 intl m pango-1.0

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		devel/meson \
			x11/gnome \
			devel/dconf

DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS=		net/telepathy/folks \
			x11/gnome/cheese,-libs \
			x11/gnome/desktop \
			x11/libhandy

MODGNOME_TOOLS=		desktop-file-utils docbook \
			gobject-introspection gtk-update-icon-cache vala

.include <bsd.port.mk>
