# $OpenBSD: Makefile,v 1.24 2018/06/27 21:04:11 espie Exp $

COMMENT=		simple task management application

GNOME_PROJECT=		gnome-todo
GNOME_VERSION=		3.28.1
REVISION=		1

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
