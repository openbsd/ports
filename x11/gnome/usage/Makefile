# $OpenBSD: Makefile,v 1.6 2019/04/28 09:22:14 ajacoutot Exp $

COMMENT=		system resources status

GNOME_PROJECT=		gnome-usage
GNOME_VERSION=		3.32.0

CATEGORIES=		sysutils

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject dazzle-1.0 gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 gtop-2.0 intl m
WANTLIB += pango-1.0 pangocairo-1.0

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS= 	desktop-file-utils gtk-update-icon-cache vala

LIB_DEPENDS=		devel/libgtop2 \
			x11/gnome/libdazzle

.include <bsd.port.mk>
