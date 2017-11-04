# $OpenBSD: Makefile,v 1.41 2017/11/04 16:45:01 jasper Exp $

PKG_ARCH=		*

COMMENT=		collection of extensions for GNOME Shell

GNOME_PROJECT=		gnome-shell-extensions
GNOME_VERSION=		3.26.2

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/dconf \
			x11/gnome

CONFIGURE_ARGS=		--enable-extensions=all

MODGNOME_TOOLS +=	desktop-file-utils

BUILD_DEPENDS=		devel/libgtop2

RUN_DEPENDS=		devel/libgtop2 \
			x11/gnome/shell

# extensions/apps-menu/extension.js
RUN_DEPENDS +=		x11/gnome/menus

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
