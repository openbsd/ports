# $OpenBSD: Makefile,v 1.33 2016/05/10 07:16:44 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		collection of extensions for GNOME Shell

GNOME_PROJECT=		gnome-shell-extensions
GNOME_VERSION=		3.20.0

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

.include <bsd.port.mk>
