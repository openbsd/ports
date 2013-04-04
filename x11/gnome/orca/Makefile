# $OpenBSD: Makefile,v 1.51 2013/04/04 12:17:22 ajacoutot Exp $

# XXX could use brltty and brlapi (with python bindinds) -- not ported yet

PKG_ARCH=		*

COMMENT=		assistive screen reader

GNOME_PROJECT=		orca
GNOME_VERSION=		3.6.3
REVISION=		1

HOMEPAGE=		http://live.gnome.org/Orca

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python \
			x11/gnome

COMMON_DEPENDS= 	audio/speech-dispatcher \
			devel/liblouis \
			devel/py-xdg \
			x11/dbus-python \
			x11/gnome/py-atspi

BUILD_DEPENDS=		${COMMON_DEPENDS} \
			x11/gtk+3

RUN_DEPENDS=		${COMMON_DEPENDS} \
			devel/py-gobject3

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGNOME_TOOLS= 	yelp

CONFIGURE_ENV=		DATADIRNAME=share

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/orca/

.include <bsd.port.mk>
