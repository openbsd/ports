# $OpenBSD: Makefile,v 1.24 2011/09/27 06:52:09 jasper Exp $

COMMENT=		developer documentation for GNOME

GNOME_PROJECT=		gnome-devel-docs
GNOME_VERSION=		3.2.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		x11/gnome

MODGNOME_TOOLS= 	yelp

BUILD_DEPENDS=		textproc/itstool

PKG_ARCH=		*
USE_LIBTOOL=		No

.include <bsd.port.mk>
