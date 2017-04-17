# $OpenBSD: Makefile,v 1.34 2017/04/17 10:54:53 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		weather application for GNOME

GNOME_PROJECT=		gnome-weather
GNOME_VERSION=		3.24.0

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/dconf \
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

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
