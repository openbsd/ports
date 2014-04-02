# $OpenBSD: Makefile,v 1.15 2014/04/02 09:36:14 jasper Exp $

PKG_ARCH=		*

COMMENT=		collection of extensions for GNOME Shell

GNOME_PROJECT=		gnome-shell-extensions
GNOME_VERSION=		3.12.0
REVISION=		0

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/dconf \
			x11/gnome

CONFIGURE_ARGS=		--enable-extensions=all

MODGNOME_TOOLS +=	desktop-file-utils

BUILD_DEPENDS=		devel/gettext \
			devel/libgtop2

RUN_DEPENDS=		devel/libgtop2 \
			x11/gnome/shell

.include <bsd.port.mk>
