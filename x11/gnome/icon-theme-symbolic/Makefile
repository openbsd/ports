# $OpenBSD: Makefile,v 1.42 2019/07/07 11:20:52 ajacoutot Exp $

COMMENT=	base icon theme extension for special UI contexts

GNOME_PROJECT=	gnome-icon-theme-symbolic
GNOME_VERSION=	3.12.0
REVISION=	3

CATEGORIES=	x11

# CC Attribution-Share Alike 3.0
PERMIT_PACKAGE=	Yes

MODULES=	x11/gnome

BUILD_DEPENDS=	x11/icon-naming-utils \
		x11/icontool

RUN_DEPENDS=	x11/gnome/icon-theme

PKG_ARCH=	*

MODGNOME_TOOLS=	gtk-update-icon-cache

CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	ac_cv_path_GIT=false \
		ac_cv_path_INKSCAPE=false

# do not enforce build dependency on gtk-update-icon-cache
CONFIGURE_ENV +=ac_cv_path_GTK_UPDATE_ICON_CACHE=/usr/bin/true

.include <bsd.port.mk>
