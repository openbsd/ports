COMMENT=		assistive screen reader

GNOME_PROJECT=		orca
GNOME_VERSION=		44.1
REVISION=		0

# LGPLv2
PERMIT_PACKAGE=		Yes

MODULES=		lang/python \
			x11/gnome

MODGNOME_TOOLS= 	gtk-update-icon-cache yelp

BUILD_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR} \
			x11/gnome/py-atspi \
			x11/gtk+3

RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR} \
			devel/py-setproctitle${MODPY_FLAVOR} \
			x11/gnome/py-atspi

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=		x11/gtk+3

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/orca/

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
