# $OpenBSD: Makefile,v 1.26 2018/07/06 06:04:46 espie Exp $

COMMENT=		simple task management application

GNOME_PROJECT=		gnome-todo
GNOME_VERSION=		3.28.1
REVISION=		3

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c cairo gdk-3 gio-2.0 girepository-1.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3 intl m pango-1.0 pangocairo-1.0 peas-1.0

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache

LIB_DEPENDS=		databases/evolution-data-server \
			devel/libpeas

.include <bsd.port.mk>
