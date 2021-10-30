# $OpenBSD: Makefile,v 1.33 2021/10/30 16:01:13 ajacoutot Exp $

COMMENT=		simple task management application

GNOME_PROJECT=		gnome-todo
GNOME_VERSION=		41.0
REVISION=		0

# GPLv3+
PERMIT_PACKAGE=		Yes

WANTLIB += adwaita-1 c ecal-2.0 edataserver-1.2 gio-2.0 girepository-1.0
WANTLIB += glib-2.0 goa-1.0 gobject-2.0 graphene-1.0 gtk-4 ical-glib
WANTLIB += intl m pango-1.0 peas-1.0

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache yelp

LIB_DEPENDS=		databases/evolution-data-server \
			devel/libpeas \
			x11/gnome/libadwaita

.include <bsd.port.mk>
