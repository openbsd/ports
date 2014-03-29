# $OpenBSD: Makefile,v 1.49 2014/03/29 09:02:26 jasper Exp $

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

MODGNOME_TOOLS= 	docbook
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

.include <bsd.port.mk>
