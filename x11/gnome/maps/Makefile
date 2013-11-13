# $OpenBSD: Makefile,v 1.4 2013/11/13 13:37:29 ajacoutot Exp $

COMMENT=		map application for GNOME

GNOME_PROJECT=		gnome-maps
GNOME_VERSION=		3.10.2

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		x11/gnome \
			devel/dconf

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

BUILD_DEPENDS=		x11/gnome/gjs

RUN_DEPENDS=		devel/py-gobject3 \
			geo/geocode-glib \
			geo/geoclue2 \
			geo/libchamplain \
			graphics/clutter/clutter-gtk \
			x11/gnome/gjs

.include <bsd.port.mk>
