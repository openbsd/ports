# $OpenBSD: Makefile,v 1.5 2010/10/27 11:04:27 ajacoutot Exp $

COMMENT=	collection of shared GSettings schemas

GNOME_PROJECT=	gsettings-desktop-schemas
GNOME_VERSION=	0.0.1

REVISION=	0

CATEGORIES=	devel

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/dconf

# don't inherit USE_LIBTOOL from the gnome MODULE
USE_LIBTOOL=	No

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-silent-rules \
		--disable-schemas-compile

.include <bsd.port.mk>
