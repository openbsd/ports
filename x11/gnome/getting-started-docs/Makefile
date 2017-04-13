# $OpenBSD: Makefile,v 1.26 2017/04/13 07:38:44 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		getting started with GNOM

GNOME_PROJECT=		gnome-getting-started-docs
GNOME_VERSION=		3.22.0

# CC Attribution-ShareAlike 3.0 Unported
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		x11/gnome

MODGNOME_TOOLS=		yelp
RUN_DEPENDS=		x11/gnome/user-docs

# share/help/*/gnome-help/figures/*.webm
# decoder-video/x-vp8 (VP8 decoder)
# decoder-video/webm (WebM demuxer)
RUN_DEPENDS +=		multimedia/gstreamer1/plugins-good

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
