# $OpenBSD: Makefile,v 1.11 2020/03/21 16:14:55 robert Exp $

PKG_ARCH=		*

COMMENT=		base icon theme for MATE

MATE_PROJECT=		mate-icon-theme

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
