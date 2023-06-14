# $OpenBSD: Makefile,v 1.6 2023/06/14 06:46:41 ajacoutot Exp $

COMMENT=		collection of GStreamer effects for GNOME

GNOME_PROJECT=		gnome-video-effects
GNOME_VERSION=		0.6.0

CATEGORIES=		multimedia

# GPLv2
PERMIT_PACKAGE=		Yes


MODULES=		devel/meson \
			x11/gnome

RUN_DEPENDS=		multimedia/frei0r-plugins \
			multimedia/gstreamer1/plugins-good \
			multimedia/gstreamer1/plugins-bad

.include <bsd.port.mk>
