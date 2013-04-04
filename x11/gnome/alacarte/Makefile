# $OpenBSD: Makefile,v 1.44 2013/04/04 07:05:06 ajacoutot Exp $

COMMENT=		fd.o menu editor for GNOME

GNOME_PROJECT=		alacarte
GNOME_VERSION=		3.7.90

CATEGORIES=		sysutils

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python \
			x11/gnome

BUILD_DEPENDS=		devel/py-gobject3 \
			x11/gnome/menus

RUN_DEPENDS=		devel/py-gobject3 \
			x11/gnome/menus

PKG_ARCH=		*

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

.include <bsd.port.mk>
