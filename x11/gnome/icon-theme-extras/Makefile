# $OpenBSD: Makefile,v 1.21 2014/03/26 13:32:10 ajacoutot Exp $

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

MODGNOME_ICON_CACHE=	Yes

CONFIGURE_ENV=	ac_cv_path_GIT=false \
		ac_cv_path_INKSCAPE=false
CONFIGURE_ARGS=	--enable-icon-mapping

.include <bsd.port.mk>
