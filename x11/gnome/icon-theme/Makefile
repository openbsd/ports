# $OpenBSD: Makefile,v 1.12 2007/07/05 22:50:10 jasper Exp $

COMMENT=		base icon theme for GNOME

GNOME_PROJECT=		gnome-icon-theme
GNOME_VERSION=		2.18.0
PKGNAME=		${DISTNAME}p0
CATEGORIES=		x11

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		x11/gnome

BUILD_DEPENDS=		:gettext-*:devel/gettext \
			:icon-naming-utils->=0.8.1:x11/icon-naming-utils

USE_X11=		Yes
USE_LIBTOOL=		No
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
