# $OpenBSD: Makefile,v 1.49 2013/03/11 11:46:11 espie Exp $

# XXX could use brltty and brlapi (with python bindinds) -- not ported yet

PKG_ARCH=		*

COMMENT=		assistive screen reader

GNOME_PROJECT=		orca
GNOME_VERSION=		3.6.3

HOMEPAGE=		http://live.gnome.org/Orca

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python \
			x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS} \
			x11/gtk+3
RUN_DEPENDS=		x11/gnome/py-atspi>=2.2.0 \
			devel/py-xdg \
			x11/dbus-python \
			audio/speech-dispatcher \
			devel/liblouis

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGNOME_TOOLS= 	yelp

CONFIGURE_ENV=		DATADIRNAME=share

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/orca/

.include <bsd.port.mk>
