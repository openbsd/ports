# $OpenBSD: Makefile,v 1.10 2019/07/12 20:51:16 sthen Exp $

PKG_ARCH=		*

COMMENT=		base icon theme for MATE

MATE_PROJECT=		mate-icon-theme
MATE_VERSION=		1.22.1

CATEGORIES=		x11

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=		x11/gnome

BUILD_DEPENDS=		x11/icon-naming-utils

# mate-icon-theme is the inherited theme for most icon themes so we
# make sure we have gtk-update-icon-cache and can display svg icons.
MODGNOME_TOOLS +=		gtk-update-icon-cache
RUN_DEPENDS +=			x11/gnome/librsvg

CONFIGURE_STYLE=	gnu

# do not enforce build dependency on gtk-update-icon-cache
CONFIGURE_ENV +=		ac_cv_path_GTK_UPDATE_ICON_CACHE=/usr/bin/true

# installs empty share/locale/... directories
CONFIGURE_ARGS +=		--disable-nls

.include <bsd.port.mk>
