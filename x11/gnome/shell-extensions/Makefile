# $OpenBSD: Makefile,v 1.64 2021/10/31 13:21:10 jasper Exp $

PKG_ARCH=		*

COMMENT=		collection of extensions for GNOME Shell

GNOME_PROJECT=		gnome-shell-extensions
GNOME_VERSION=		41.0

# GPLv2+
PERMIT_PACKAGE=		Yes

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS +=	desktop-file-utils

BUILD_DEPENDS=		devel/libgtop2 \
			www/sassc

RUN_DEPENDS=		devel/libgtop2 \
			x11/gnome/shell

# extensions/apps-menu/extension.js
RUN_DEPENDS +=		x11/gnome/menus

CONFIGURE_ARGS=		-D extension_set=all \
			-D classic_mode=true

.include <bsd.port.mk>
