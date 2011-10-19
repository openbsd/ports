# $OpenBSD: Makefile,v 1.47 2011/10/19 12:59:07 ajacoutot Exp $

COMMENT=	base icon theme for GNOME

GNOME_PROJECT=	gnome-icon-theme
GNOME_VERSION=	3.2.1.1
REVISION=	0

CATEGORIES=	x11

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	x11/gnome

BUILD_DEPENDS=	x11/icon-naming-utils>=0.8.90

# Rational: except for QT/KDE ports, gtk+2 should already be in the
# dependency chain for ports installing share/icons/ files (i.e. no need
# to explicitely add it) and if we have svg icons without their png
# counterpart and librsvg is not part of the dependency chain then we
# explicitely add it.
# gnome-icon-theme is the inherited theme for most icon themes so we
# make sure we have gtk-update-icon-cache and can display svg icons.
RUN_DEPENDS +=	x11/gtk+2 \
		x11/gnome/librsvg

PKG_ARCH=	*

USE_LIBTOOL=	No
CONFIGURE_ARGS=	--enable-icon-mapping \
		--disable-nls

EXAMPLEDIR=	${PREFIX}/share/examples/${GNOME_PROJECT}

FAKE_FLAGS=	pkgconfigdir=${PREFIX}/lib/pkgconfig

# no need to build_depends on gtk+2|gtk+3, we run gtk-update-icon-cache
# at pkg_add time if it is available
post-extract:
	ln -sf /usr/bin/true ${WRKDIR}/bin/gtk-update-icon-cache

post-install:
# Unbreak gtk+2 applications that use gnome-icon-theme, when 
# executed outside of a Desktop Environment
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}/gtk-2.0
	@echo 'gtk-icon-theme-name = "gnome"' > \
		${EXAMPLEDIR}/gtk-2.0/gtkrc

.include <bsd.port.mk>
