# $OpenBSD: Makefile,v 1.29 2010/04/20 17:49:51 jasper Exp $

COMMENT=	base icon theme for GNOME

GNOME_PROJECT=	gnome-icon-theme
GNOME_VERSION=	2.30.1

CATEGORIES=	x11

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	x11/gnome

BUILD_DEPENDS=	:gettext-*:devel/gettext \
		:icon-naming-utils->=0.8.90:x11/icon-naming-utils

USE_X11=	Yes
USE_LIBTOOL=	No
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_path_GIT=false \
		ac_cv_path_INKSCAPE=false \
		ac_cv_path_ICONTOOL_RENDER=false

.include <bsd.port.mk>
