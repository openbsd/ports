# $OpenBSD: Makefile,v 1.27 2012/04/16 13:34:34 jasper Exp $

COMMENT=	collection of shared GSettings schemas

GNOME_PROJECT=	gsettings-desktop-schemas
GNOME_VERSION=	3.4.1

CATEGORIES=	devel

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	x11/gnome \
		devel/dconf

BUILD_DEPENDS=	devel/gettext

# don't inherit USE_LIBTOOL from the gnome MODULE
USE_LIBTOOL=	No

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
