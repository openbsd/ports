# $OpenBSD: Makefile,v 1.7 2013/09/28 08:51:18 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		getting started with GNOM

GNOME_PROJECT=		gnome-getting-started-docs
GNOME_VERSION=		3.10.0.1
REVISION=		0

# CC Attribution-ShareAlike 3.0 Unported
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		x11/gnome

MODGNOME_TOOLS= 	yelp

RUN_DEPENDS=		x11/gnome/user-docs

# webkit browsing
RUN_DEPENDS +=		multimedia/gstreamer1/plugins-libav

.include <bsd.port.mk>
