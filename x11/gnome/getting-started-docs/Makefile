# $OpenBSD: Makefile,v 1.38 2020/04/26 08:02:56 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		getting started with GNOM

GNOME_PROJECT=		gnome-getting-started-docs
GNOME_VERSION=		3.34.2

# CC Attribution-ShareAlike 3.0 Unported
PERMIT_PACKAGE=		Yes

MODULES=		x11/gnome

MODGNOME_TOOLS=		yelp
RUN_DEPENDS=		x11/gnome/user-docs

# share/help/*/gnome-help/figures/*.webm
# decoder-video/x-vp8 (VP8 decoder)
# decoder-video/webm (WebM demuxer)
RUN_DEPENDS +=		multimedia/gstreamer1/plugins-good

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
