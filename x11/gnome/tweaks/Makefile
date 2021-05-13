# $OpenBSD: Makefile,v 1.17 2021/05/13 08:18:50 ajacoutot Exp $

COMMENT=		customize advanced GNOME 3 options

GNOME_PROJECT=		gnome-tweaks
GNOME_VERSION=		40.0

CATEGORIES=		sysutils

# GPLv3
PERMIT_PACKAGE=		Yes

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/py-gobject3${MODPY_FLAVOR} \
			x11/gtk+3

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/py-gobject3${MODPY_FLAVOR} \
			x11/gnome/settings-daemon \
			x11/gnome/shell \
			x11/libhandy

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=		x11/gtk+3

# Notify introspection libs: site-packages/gtweak/utils.py
RUN_DEPENDS +=		devel/libnotify

.include <bsd.port.mk>
