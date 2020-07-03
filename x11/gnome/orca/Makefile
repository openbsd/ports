# $OpenBSD: Makefile,v 1.113 2020/07/03 21:13:22 sthen Exp $

# XXX could use brltty and brlapi (with python bindinds) -- not ported yet

COMMENT=		assistive screen reader

GNOME_PROJECT=		orca
GNOME_VERSION=		3.36.3
REVISION=		0

# LGPLv2
PERMIT_PACKAGE=		Yes

MODULES=		lang/python \
			x11/gnome

COMMON_DEPENDS= 	audio/speech-dispatcher \
			devel/liblouis \
			devel/py-gobject3${MODPY_FLAVOR} \
			x11/gnome/py-atspi

BUILD_DEPENDS=		${COMMON_DEPENDS} \
			multimedia/gstreamer1/core \
			x11/gtk+3

RUN_DEPENDS=		${COMMON_DEPENDS} \
			devel/py-setproctitle${MODPY_FLAVOR}

# sndio(7) support, sound.py:123
RUN_DEPENDS +=		multimedia/gstreamer1/plugins-base \
			multimedia/gstreamer1/plugins-good

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=		x11/gtk+3

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
MODGNOME_TOOLS= 	gtk-update-icon-cache yelp
FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/orca/

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
