# $OpenBSD: Makefile,v 1.28 2013/03/11 11:46:12 espie Exp $

PKG_ARCH=	*

COMMENT=	tweak hidden GTK/GNOME settings

GNOME_PROJECT=	gnome-tweak-tool
GNOME_VERSION=	3.6.1

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

.include <bsd.port.mk>
