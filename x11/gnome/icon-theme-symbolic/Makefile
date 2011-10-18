# $OpenBSD: Makefile,v 1.12 2011/10/18 15:22:34 ajacoutot Exp $

COMMENT=	base icon theme extension for special UI contexts

GNOME_PROJECT=	gnome-icon-theme-symbolic
GNOME_VERSION=	3.2.1

CATEGORIES=	x11

# CC Attribution-Share Alike 3.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	x11/gnome

BUILD_DEPENDS=	x11/icon-naming-utils \
		x11/icontool
RUN_DEPENDS=	x11/gnome/icon-theme

PKG_ARCH=	*

USE_LIBTOOL=	No

CONFIGURE_ENV=	ac_cv_path_GIT=false \
		ac_cv_path_INKSCAPE=false
CONFIGURE_ARGS=	--enable-icon-mapping

# no need to build_depends on gtk+2|gtk+3, we run gtk-update-icon-cache
# at pkg_add time if it is available
post-extract:
	ln -sf /usr/bin/true ${WRKDIR}/bin/gtk-update-icon-cache

.include <bsd.port.mk>
