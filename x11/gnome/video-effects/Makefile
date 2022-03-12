# $OpenBSD: Makefile,v 1.4 2022/03/12 09:31:27 ajacoutot Exp $

COMMENT=		collection of GStreamer effects for GNOME

GNOME_PROJECT=		gnome-video-effects
GNOME_VERSION=		0.5.0.20220219

# override gnome MODULE
COMMIT=                 dd9ae10b74f12c9b476aceb42a64cf58b818a72f
MASTER_SITES=           https://gitlab.gnome.org/GNOME/${GNOME_PROJECT}/-/archive/${COMMIT}/
WRKDIST=                ${WRKDIR}/${GNOME_PROJECT}-${COMMIT}
EXTRACT_SUFX=           .tar.gz

CATEGORIES=		multimedia

# GPLv2
PERMIT_PACKAGE=		Yes


MODULES=		devel/meson \
			x11/gnome

RUN_DEPENDS=		multimedia/frei0r-plugins \
			multimedia/gstreamer1/plugins-good \
			multimedia/gstreamer1/plugins-bad

.include <bsd.port.mk>
