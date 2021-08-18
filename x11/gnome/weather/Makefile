# $OpenBSD: Makefile,v 1.51 2021/08/18 09:21:59 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		weather application for GNOME

GNOME_PROJECT=		gnome-weather
GNOME_VERSION=		40.1

# GPLv2+
PERMIT_PACKAGE=		Yes

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		geo/geoclue2 \
			x11/gnome/gjs \
			x11/gnome/libgweather \
			x11/libhandy

RUN_DEPENDS=		geo/geoclue2 \
			x11/gnome/desktop \
			x11/gnome/gjs \
			x11/gnome/libgweather \
			x11/libhandy

MODPY_BUILDDEP=		No
MODPY_RUNDEP=		No
MODPY_ADJ_FILES=	tests/world_view.py

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache

TEST_DEPENDS=		${MODPY_RUN_DEPENDS}

.include <bsd.port.mk>
