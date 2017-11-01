# $OpenBSD: Makefile,v 1.18 2017/11/01 21:19:21 ajacoutot Exp $

COMMENT=		simple task management application

GNOME_PROJECT=		gnome-todo
GNOME_VERSION=		3.26.2

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c cairo ecal-1.2 gdk-3 gio-2.0 girepository-1.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 ical intl m pango-1.0 pangocairo-1.0
WANTLIB += peas-1.0

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache

LIB_DEPENDS=		databases/evolution-data-server \
			devel/libpeas

.include <bsd.port.mk>
