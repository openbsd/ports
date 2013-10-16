# $OpenBSD: Makefile,v 1.63 2013/10/16 15:30:05 ajacoutot Exp $

# XXX could use brltty and brlapi (with python bindinds) -- not ported yet

PKG_ARCH=		*

COMMENT=		assistive screen reader

GNOME_PROJECT=		orca
GNOME_VERSION=		3.10.1

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python \
			x11/gnome

COMMON_DEPENDS= 	audio/speech-dispatcher \
			devel/liblouis \
			devel/py-gobject3${MODPY_FLAVOR} \
			x11/gnome/py-atspi \
			x11/gtk+3

BUILD_DEPENDS=		${COMMON_DEPENDS}
RUN_DEPENDS=		${COMMON_DEPENDS} \
			devel/py-setproctitle${MODPY_FLAVOR}

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGNOME_TOOLS= 	yelp

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/orca/

.include <bsd.port.mk>
