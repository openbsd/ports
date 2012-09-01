# $OpenBSD: Makefile,v 1.30 2012/09/01 14:36:57 ajacoutot Exp $

COMMENT=	collection of shared GSettings schemas

GNOME_PROJECT=	gsettings-desktop-schemas
GNOME_VERSION=	3.4.2
REVISION=	1

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

MODGNOME_TOOLS=	goi

# don't inherit USE_LIBTOOL from the gnome MODULE
USE_LIBTOOL=	No

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
