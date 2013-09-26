# $OpenBSD: Makefile,v 1.64 2013/09/26 06:26:51 ajacoutot Exp $

PKG_ARCH=	*

COMMENT=	base icon theme for GNOME

GNOME_PROJECT=	gnome-icon-theme
GNOME_VERSION=	3.10.0

CATEGORIES=	x11

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/gnome

BUILD_DEPENDS=	x11/icon-naming-utils>=0.8.90

# gnome-icon-theme is the inherited theme for most icon themes so we
# make sure we have gtk-update-icon-cache and can display svg icons.
MODGNOME_ICON_CACHE=	Yes
RUN_DEPENDS +=		x11/gnome/librsvg

CONFIGURE_ARGS=	--enable-icon-mapping \
		--disable-nls

# don't run gtk-update-icon-cache, the package takes care of it
CONFIGURE_ENV += ac_cv_path_GTK_UPDATE_ICON_CACHE=/usr/bin/true

EXAMPLEDIR=	${PREFIX}/share/examples/${GNOME_PROJECT}

# gtk-update-icon-cache is checked by configure but do not enforce the
# dependency: we don't need to run it, the package takes care of that
pre-configure:
	ln -s /usr/bin/true ${WRKDIR}/bin/gtk-update-icon-cache

# Unbreak GTK+ applications that use gnome-icon-theme, when executed outside
# of a Desktop Environment
post-install:
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}/gtk-2.0
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}/gtk-3.0
	@echo 'gtk-icon-theme-name = "gnome"' > \
		${EXAMPLEDIR}/gtk-2.0/gtkrc
	@printf "[Settings]\ngtk-icon-theme-name = gnome\n" > \
		${EXAMPLEDIR}/gtk-3.0/settings.ini

.include <bsd.port.mk>
