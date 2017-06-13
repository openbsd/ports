# $OpenBSD: Makefile,v 1.56 2017/06/13 07:45:48 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		tweak hidden GTK/GNOME settings

GNOME_PROJECT=		gnome-tweak-tool
GNOME_VERSION=		3.24.1

CATEGORIES=		sysutils

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		x11/gnome \
			lang/python

MODPY_ADJ_FILES=	gnome-tweak-tool
MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/py-gobject3 \
			x11/gtk+3

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/py-gobject3

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=		x11/gtk+3

RUN_DEPENDS +=		x11/gnome/shell

# Notify introspection libs: site-packages/gtweak/utils.py
RUN_DEPENDS +=		devel/libnotify

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
