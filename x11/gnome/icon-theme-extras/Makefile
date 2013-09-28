# $OpenBSD: Makefile,v 1.20 2013/09/28 08:51:20 ajacoutot Exp $

COMMENT=	extra icons for GNOME

GNOME_PROJECT=	gnome-icon-theme-extras
GNOME_VERSION=	3.6.2
REVISION=	1

CATEGORIES=	x11

# CC Attribution-Share Alike 3.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/gnome

BUILD_DEPENDS=	x11/icon-naming-utils \
		x11/icontool

PKG_ARCH=	*

MODGNOME_ICON_CACHE=	Yes

CONFIGURE_ENV=	ac_cv_path_GIT=false \
		ac_cv_path_INKSCAPE=false
CONFIGURE_ARGS=	--enable-icon-mapping

.include <bsd.port.mk>
