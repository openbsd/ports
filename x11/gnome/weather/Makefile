# $OpenBSD: Makefile,v 1.21 2015/04/03 10:59:07 ajacoutot Exp $

COMMENT=		weather application for GNOME

GNOME_PROJECT=		gnome-weather
GNOME_VERSION=		3.16.0

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/dconf \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		x11/gnome/gjs \
			x11/gnome/libgweather \
			x11/gtk+3

# gjs application
PKG_ARCH=		*
RUN_DEPENDS=		x11/gnome/gjs \
			x11/gnome/libgweather \
			x11/gtk+3

MODPY_BUILDDEP=		No
MODPY_RUNDEP=		No
MODPY_ADJ_FILES=	tests/world_view.py

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache

# configure checks for "appstream-util"; this is only needed for the "check"
# target and we don't want to enforce a BUILD_DEPENDS
CONFIGURE_ARGS=		--disable-appstream-util

TEST_DEPENDS=		${MODPY_RUN_DEPENDS}

.include <bsd.port.mk>
