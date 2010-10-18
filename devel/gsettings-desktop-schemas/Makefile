# $OpenBSD: Makefile,v 1.2 2010/10/18 13:28:51 jasper Exp $

COMMENT=	collection of shared GSettings schemas

GNOME_PROJECT=	gsettings-desktop-schemas
GNOME_VERSION=	0.0.1

CATEGORIES=	devel

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/glib2

# don't inherit USE_LIBTOOL from the gnome MODULE
USE_LIBTOOL=	No

USE_X11=	No

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-silent-rules

.include <bsd.port.mk>
