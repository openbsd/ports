# $OpenBSD: Makefile,v 1.39 2017/05/21 17:48:41 jasper Exp $

PKG_ARCH=		*

COMMENT=		collection of extensions for GNOME Shell

GNOME_PROJECT=		gnome-shell-extensions
GNOME_VERSION=		3.24.2

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
