# $OpenBSD: Makefile,v 1.23 2014/04/01 18:38:53 jasper Exp $

COMMENT=	extra icons for GNOME

GNOME_PROJECT=	gnome-icon-theme-extras
GNOME_VERSION=	3.12.0

CATEGORIES=	x11

# CC Attribution-Share Alike 3.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/gnome

BUILD_DEPENDS=	x11/icon-naming-utils \
		x11/icontool

PKG_ARCH=	*

MODGNOME_TOOLS =	gtk-update-icon-cache

CONFIGURE_ENV=	ac_cv_path_GIT=false \
		ac_cv_path_INKSCAPE=false

.include <bsd.port.mk>
