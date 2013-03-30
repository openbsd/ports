# $OpenBSD: Makefile,v 1.1.1.1 2013/03/30 16:25:05 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		getting started with GNOM

GNOME_PROJECT=		gnome-getting-started-docs
GNOME_VERSION=		3.8.0.1

# CC Attribution-ShareAlike 3.0 Unported
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		x11/gnome

MODGNOME_TOOLS= 	yelp

RUN_DEPENDS=		x11/gnome/user-docs

# webkit browsing
RUN_DEPENDS +=		multimedia/gstreamer-0.10/plugins-ffmpeg

.include <bsd.port.mk>
