# $OpenBSD: Makefile,v 1.78 2019/07/07 11:20:52 ajacoutot Exp $

PKG_ARCH=	*

COMMENT=	base icon theme for GNOME

GNOME_PROJECT=	gnome-icon-theme
GNOME_VERSION=	3.12.0
REVISION=	5

CATEGORIES=	x11

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/gnome

BUILD_DEPENDS=	x11/icon-naming-utils

# gnome-icon-theme is the inherited theme for most icon themes so we
# make sure we have gtk-update-icon-cache and can display svg icons.
MODGNOME_TOOLS +=	gtk-update-icon-cache
RUN_DEPENDS +=		x11/gnome/librsvg

CONFIGURE_STYLE=	gnu

# do not enforce build dependency on gtk-update-icon-cache
CONFIGURE_ENV +=	ac_cv_path_GTK_UPDATE_ICON_CACHE=/usr/bin/true

# installs empty share/locale/... directories
CONFIGURE_ARGS +=	--disable-nls

.include <bsd.port.mk>
