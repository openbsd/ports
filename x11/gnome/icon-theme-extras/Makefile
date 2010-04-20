# $OpenBSD: Makefile,v 1.1.1.1 2010/04/20 15:53:16 ajacoutot Exp $

COMMENT=	extra icon theme for GNOME

GNOME_PROJECT=	gnome-icon-theme-extras
GNOME_VERSION=	2.30.1

CATEGORIES=	x11

# CC Attribution-Share Alike 3.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	x11/gnome

BUILD_DEPENDS=	:icon-naming-utils->=0.8.90:x11/icon-naming-utils

USE_LIBTOOL=	No

CONFIGURE_ENV=	ac_cv_path_GIT=false \
		ac_cv_path_INKSCAPE=false \
		ac_cv_path_ICONTOOL_RENDER=false

.include <bsd.port.mk>
