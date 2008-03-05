# $OpenBSD: Makefile,v 1.16 2008/03/05 17:22:27 bernd Exp $

COMMENT=		base icon theme for GNOME

GNOME_PROJECT=		gnome-icon-theme
GNOME_VERSION=		2.20.0
CATEGORIES=		x11
PKGNAME=		${DISTNAME}p2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		x11/gnome

BUILD_DEPENDS=		:gettext-*:devel/gettext \
			:icon-naming-utils->=0.8.1:x11/icon-naming-utils

# Needed to run gtk-update-icon-cache(1) at install time.
RUN_DEPENDS=		::x11/gtk+2

USE_X11=		Yes
USE_LIBTOOL=		No
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
