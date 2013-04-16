# $OpenBSD: Makefile,v 1.3 2013/04/16 06:06:43 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		getting started with GNOM

GNOME_PROJECT=		gnome-getting-started-docs
GNOME_VERSION=		3.8.1

# CC Attribution-ShareAlike 3.0 Unported
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		x11/gnome

MODGNOME_TOOLS= 	yelp

RUN_DEPENDS=		x11/gnome/user-docs

# webkit browsing
RUN_DEPENDS +=		multimedia/gstreamer1/plugins-libav

.include <bsd.port.mk>
