# $OpenBSD: Makefile,v 1.62 2018/04/23 21:29:22 ajacoutot Exp $

COMMENT=		GNOME Docking Library

GNOME_PROJECT=		gdl
GNOME_VERSION=		3.28.0

SHARED_LIBS +=  gdl-3                3.1      # 5.9

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes


MODULES=		x11/gnome

LIB_DEPENDS=		textproc/libxml \
			x11/gtk+3

MODGNOME_TOOLS=		gobject-introspection

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
