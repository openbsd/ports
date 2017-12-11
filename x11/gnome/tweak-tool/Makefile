# $OpenBSD: Makefile,v 1.60 2017/12/11 19:00:20 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		tweak hidden GTK/GNOME settings

GNOME_PROJECT=		gnome-tweak-tool
GNOME_VERSION=		3.26.4

CATEGORIES=		sysutils

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/meson \
			lang/python \
			x11/gnome

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/py-gobject3${MODPY_FLAVOR} \
			x11/gtk+3

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/py-gobject3${MODPY_FLAVOR} \
			x11/gnome/shell

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=		x11/gtk+3

# Notify introspection libs: site-packages/gtweak/utils.py
RUN_DEPENDS +=		devel/libnotify

.include <bsd.port.mk>
