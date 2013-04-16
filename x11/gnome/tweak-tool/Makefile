# $OpenBSD: Makefile,v 1.30 2013/04/16 10:21:58 ajacoutot Exp $

PKG_ARCH=	*

COMMENT=	tweak hidden GTK/GNOME settings

GNOME_PROJECT=	gnome-tweak-tool
GNOME_VERSION=	3.8.0
REVISION=	0

CATEGORIES=	sysutils

HOMEPAGE=	https://live.gnome.org/GnomeTweakTool

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/gnome \
		lang/python

BUILD_DEPENDS=	devel/gsettings-desktop-schemas \
		devel/gconf2 \
		devel/gettext \
		devel/py-gobject3

RUN_DEPENDS=	devel/gsettings-desktop-schemas \
		devel/gconf2 \
		devel/gettext \
		devel/py-gobject3

MODPY_ADJ_FILES=gnome-tweak-tool

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

CONFIGURE_STYLE=	autoconf no-autoheader
AUTOCONF_VERSION=	2.69

.include <bsd.port.mk>
