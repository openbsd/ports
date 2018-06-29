# $OpenBSD: Makefile,v 1.4 2018/06/29 22:16:24 espie Exp $

PKG_ARCH=		*

COMMENT=		customize advanced GNOME 3 options

GNOME_PROJECT=		gnome-tweaks
GNOME_VERSION=		3.28.1
REVISION=		2

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
