# $OpenBSD: Makefile,v 1.13 2014/03/28 16:02:21 ajacoutot Exp $

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

MODGNOME_DESKTOP_FILE=	Yes

BUILD_DEPENDS=		devel/gettext \
			devel/libgtop2

RUN_DEPENDS=		devel/libgtop2 \
			x11/gnome/shell

.include <bsd.port.mk>
