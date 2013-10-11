# $OpenBSD: Makefile,v 1.67 2013/10/11 15:01:42 ajacoutot Exp $

PKG_ARCH=	*

COMMENT=	base icon theme for GNOME

GNOME_PROJECT=	gnome-icon-theme
GNOME_VERSION=	3.10.0
REVISION=	2

CATEGORIES=	x11

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/gnome

BUILD_DEPENDS=	x11/icon-naming-utils

# gnome-icon-theme is the inherited theme for most icon themes so we
# make sure we have gtk-update-icon-cache and can display svg icons.
MODGNOME_ICON_CACHE=	Yes
RUN_DEPENDS +=		x11/gnome/librsvg

CONFIGURE_ARGS=	--enable-icon-mapping \
		--disable-nls

# gtk-update-icon-cache is checked by configure but do not enforce the
# dependency: we don't need to run it, the package takes care of that
pre-configure:
	ln -s /usr/bin/true ${WRKDIR}/bin/gtk-update-icon-cache

.include <bsd.port.mk>
