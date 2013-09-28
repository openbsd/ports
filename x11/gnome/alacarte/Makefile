# $OpenBSD: Makefile,v 1.47 2013/09/28 08:51:10 ajacoutot Exp $

COMMENT=		fd.o menu editor for GNOME

GNOME_PROJECT=		alacarte
GNOME_VERSION=		3.10.0
REVISION=		0

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
