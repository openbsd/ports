# $OpenBSD: Makefile,v 1.51 2014/04/01 18:06:30 jasper Exp $

COMMENT=		fd.o menu editor for GNOME

GNOME_PROJECT=		alacarte
GNOME_VERSION=		3.11.91

CATEGORIES=		sysutils

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python \
			x11/gnome

BUILD_DEPENDS=		devel/py-gobject3 \
			x11/gnome/menus

RUN_DEPENDS=		devel/py-gobject3 \
			x11/gnome/menus

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=		x11/gtk+3

PKG_ARCH=		*

MODGNOME_TOOLS += docbook  desktop-file-utils  gtk-update-icon-cache
.include <bsd.port.mk>
