# $OpenBSD: Makefile,v 1.22 2013/03/11 11:46:11 espie Exp $

COMMENT=	base icon theme extension for special UI contexts

GNOME_PROJECT=	gnome-icon-theme-symbolic
GNOME_VERSION=	3.6.2

CATEGORIES=	x11

# CC Attribution-Share Alike 3.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/gnome

BUILD_DEPENDS=	x11/icon-naming-utils \
		x11/icontool

# gtk-update-icon-cache is used at build time
BUILD_DEPENDS +=x11/gtk+2,-guic

RUN_DEPENDS=	x11/gnome/icon-theme

PKG_ARCH=	*

MODGNOME_ICON_CACHE=	Yes

CONFIGURE_ENV=	ac_cv_path_GIT=false \
		ac_cv_path_INKSCAPE=false
CONFIGURE_ARGS=	--enable-icon-mapping

.include <bsd.port.mk>
