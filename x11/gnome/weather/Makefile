# $OpenBSD: Makefile,v 1.42 2020/04/04 11:16:45 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		weather application for GNOME

GNOME_PROJECT=		gnome-weather
GNOME_VERSION=		3.34.1

# GPLv2+
PERMIT_PACKAGE=		Yes

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		geo/geoclue2 \
			x11/gnome/gjs \
			x11/gnome/libgweather \
			x11/gtk+3

RUN_DEPENDS=		geo/geoclue2 \
			x11/gnome/gjs \
			x11/gnome/libgweather \
			x11/gtk+3

MODPY_BUILDDEP=		No
MODPY_RUNDEP=		No
MODPY_ADJ_FILES=	tests/world_view.py

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache

TEST_DEPENDS=		${MODPY_RUN_DEPENDS}

.include <bsd.port.mk>
