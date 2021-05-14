# $OpenBSD: Makefile,v 1.5 2021/05/14 09:05:52 ajacoutot Exp $

COMMENT=		remote desktop client for GNOME

GNOME_PROJECT=		gnome-connections
GNOME_VERSION=		40.0.1

CATEGORIES=		net

# GPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += c cairo freerdp2 gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 gtk-vnc-2.0 intl m winpr2 xml2

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection yelp \
			gtk-update-icon-cache shared-mime-info vala

LIB_DEPENDS=		x11/freerdp \
			x11/gtk-vnc

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
