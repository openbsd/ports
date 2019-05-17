# $OpenBSD: Makefile,v 1.27 2019/05/17 17:26:29 ajacoutot Exp $

COMMENT=		simple task management application

GNOME_PROJECT=		gnome-todo
GNOME_VERSION=		3.28.1
REVISION=		4

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject ecal-1.2 edataserver-1.2
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gtk-3 ical intl json-glib-1.0
WANTLIB += m pango-1.0 pangocairo-1.0 peas-1.0 pthread secret-1
WANTLIB += soup-2.4 xml2

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache

LIB_DEPENDS=		databases/evolution-data-server \
			devel/libpeas

.include <bsd.port.mk>
