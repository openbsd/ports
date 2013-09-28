# $OpenBSD: Makefile,v 1.10 2013/09/28 08:51:29 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		collection of extensions for GNOME Shell

GNOME_PROJECT=		gnome-shell-extensions
GNOME_VERSION=		3.10.0
REVISION=		0

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/dconf \
			x11/gnome

CONFIGURE_ARGS+=	--enable-extensions=all

MODGNOME_DESKTOP_FILE=	Yes

BUILD_DEPENDS=		devel/gettext \
			devel/libgtop2 \
			x11/gnome/desktop
RUN_DEPENDS=		devel/libgtop2 \
			x11/gnome/desktop \
			x11/gnome/shell

.include <bsd.port.mk>
