# $OpenBSD: Makefile,v 1.27 2009/10/14 16:57:15 ajacoutot Exp $

COMMENT=	base icon theme for GNOME

GNOME_PROJECT=	gnome-icon-theme
GNOME_VERSION=	2.28.0
PKGNAME=	${DISTNAME}p0

CATEGORIES=	x11

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	x11/gnome

BUILD_DEPENDS=	:gettext-*:devel/gettext \
		:icon-naming-utils->=0.8.90:x11/icon-naming-utils
RUN_DEPENDS=	::x11/gnome/librsvg

USE_X11=	Yes
USE_LIBTOOL=	No
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
