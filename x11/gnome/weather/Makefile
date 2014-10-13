# $OpenBSD: Makefile,v 1.19 2014/10/13 17:20:45 ajacoutot Exp $

COMMENT=		weather application for GNOME

GNOME_PROJECT=		gnome-weather
GNOME_VERSION=		3.14.1

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/dconf \
			x11/gnome

BUILD_DEPENDS=		x11/gnome/gjs \
			x11/gnome/libgweather \
			x11/gtk+3

# gjs application
PKG_ARCH=		*
RUN_DEPENDS=		x11/gnome/gjs \
			x11/gnome/libgweather \
			x11/gtk+3

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection gtk-update-icon-cache

.include <bsd.port.mk>
