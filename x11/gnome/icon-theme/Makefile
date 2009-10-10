# $OpenBSD: Makefile,v 1.26 2009/10/10 13:45:31 jasper Exp $

COMMENT=		base icon theme for GNOME

GNOME_PROJECT=		gnome-icon-theme
GNOME_VERSION=		2.28.0
CATEGORIES=		x11

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		x11/gnome

BUILD_DEPENDS=		:gettext-*:devel/gettext \
			:icon-naming-utils->=0.8.90:x11/icon-naming-utils

USE_X11=		Yes
USE_LIBTOOL=		No
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
