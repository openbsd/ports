# $OpenBSD: Makefile,v 1.4 2011/05/19 14:36:36 ajacoutot Exp $

COMMENT=	extra icons for GNOME

GNOME_PROJECT=	gnome-icon-theme-extras
GNOME_VERSION=	3.0.0
REVISION=	2

CATEGORIES=	x11

# CC Attribution-Share Alike 3.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	x11/gnome

BUILD_DEPENDS=	x11/icon-naming-utils \
		x11/icontool \
		${RUN_DEPENDS}
RUN_DEPENDS=	x11/gnome/icon-theme

PKG_ARCH=	*

USE_LIBTOOL=	No

CONFIGURE_ENV=	ac_cv_path_GIT=false \
		ac_cv_path_INKSCAPE=false
CONFIGURE_ARGS=	--enable-icon-mapping

.include <bsd.port.mk>
