# $OpenBSD: Makefile,v 1.74 2014/06/03 11:37:56 rpointel Exp $

# XXX could use brltty and brlapi (with python bindinds) -- not ported yet

PKG_ARCH=		*

COMMENT=		assistive screen reader

GNOME_PROJECT=		orca
GNOME_VERSION=		3.12.2

REVISION = 0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python \
			x11/gnome

COMMON_DEPENDS= 	audio/speech-dispatcher \
			devel/liblouis \
			devel/py-gobject3${MODPY_FLAVOR} \
			x11/gnome/py-atspi

BUILD_DEPENDS=		${COMMON_DEPENDS} \
			x11/gtk+3

RUN_DEPENDS=		${COMMON_DEPENDS} \
			devel/py-setproctitle${MODPY_FLAVOR}

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=		x11/gtk+3

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
MODGNOME_TOOLS += 	desktop-file-utils gtk-update-icon-cache yelp
FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/orca/

.include <bsd.port.mk>
