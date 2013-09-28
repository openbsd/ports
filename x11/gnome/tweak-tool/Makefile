# $OpenBSD: Makefile,v 1.35 2013/09/28 07:06:49 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		tweak hidden GTK/GNOME settings

GNOME_PROJECT=		gnome-tweak-tool
GNOME_VERSION=		3.10.0
REVISION=		1

CATEGORIES=		sysutils

HOMEPAGE=		https://live.gnome.org/GnomeTweakTool

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		x11/gnome \
			lang/python

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/gettext \
			devel/py-gobject3 \
			x11/gtk+3

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/gettext \
			devel/py-gobject3 \
			x11/gtk+3

RUN_DEPENDS +=		x11/gnome/shell

# Notify introspection libs: site-packages/gtweak/utils.py
RUN_DEPENDS +=		devel/libnotify

MODPY_ADJ_FILES=	gnome-tweak-tool

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

.include <bsd.port.mk>
