# $OpenBSD: Makefile,v 1.32 2021/10/26 13:28:22 ajacoutot Exp $

COMMENT=		simple task management application

GNOME_PROJECT=		gnome-todo
GNOME_VERSION=		41.0

# GPLv3+
PERMIT_PACKAGE=		Yes

WANTLIB += adwaita-1 c ecal-2.0 edataserver-1.2 gio-2.0 girepository-1.0
WANTLIB += glib-2.0 goa-1.0 gobject-2.0 graphene-1.0 gtk-4 ical-glib
WANTLIB += intl m pango-1.0 peas-1.0

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache

LIB_DEPENDS=		databases/evolution-data-server \
			devel/libpeas \
			x11/gnome/libadwaita

.include <bsd.port.mk>
