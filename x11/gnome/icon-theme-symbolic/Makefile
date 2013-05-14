# $OpenBSD: Makefile,v 1.26 2013/05/14 11:49:13 ajacoutot Exp $

COMMENT=	base icon theme extension for special UI contexts

GNOME_PROJECT=	gnome-icon-theme-symbolic
GNOME_VERSION=	3.8.2.2

CATEGORIES=	x11

# CC Attribution-Share Alike 3.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/gnome

BUILD_DEPENDS=	x11/icon-naming-utils \
		x11/icontool

RUN_DEPENDS=	x11/gnome/icon-theme

PKG_ARCH=	*

MODGNOME_ICON_CACHE=	Yes

CONFIGURE_ENV=	ac_cv_path_GIT=false \
		ac_cv_path_INKSCAPE=false
CONFIGURE_ARGS=	--enable-icon-mapping

# gtk-update-icon-cache is checked by configure but do not enforce the
# dependency: we don't need to run it, the package takes care of that
pre-configure:
	ln -s /usr/bin/true ${WRKDIR}/bin/gtk-update-icon-cache

.include <bsd.port.mk>
