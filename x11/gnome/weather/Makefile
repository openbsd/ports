# $OpenBSD: Makefile,v 1.29 2015/10/13 13:17:15 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		weather application for GNOME

GNOME_PROJECT=		gnome-weather
GNOME_VERSION=		3.18.1

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/dconf \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		x11/gnome/gjs \
			x11/gnome/libgweather \
			x11/gtk+3

RUN_DEPENDS=		x11/gnome/gjs \
			x11/gnome/libgweather \
			x11/gtk+3

MODPY_BUILDDEP=		No
MODPY_RUNDEP=		No
MODPY_ADJ_FILES=	tests/world_view.py

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache

TEST_DEPENDS=		${MODPY_RUN_DEPENDS}

.include <bsd.port.mk>
