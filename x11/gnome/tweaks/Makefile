# $OpenBSD: Makefile,v 1.12 2020/07/03 21:13:22 sthen Exp $

COMMENT=		customize advanced GNOME 3 options

GNOME_PROJECT=		gnome-tweaks
GNOME_VERSION=		3.34.0
REVISION=		0

CATEGORIES=		sysutils

# GPLv3
PERMIT_PACKAGE=		Yes

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
			x11/gnome/settings-daemon \
			x11/gnome/shell

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=		x11/gtk+3

# Notify introspection libs: site-packages/gtweak/utils.py
RUN_DEPENDS +=		devel/libnotify

.include <bsd.port.mk>
