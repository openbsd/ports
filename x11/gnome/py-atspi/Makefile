COMMENT=		python bindings for at-spi2

GNOME_PROJECT=		pyatspi
GNOME_VERSION=		2.46.1
PKGNAME=		py-atspi-${GNOME_VERSION}
REVISION=		0

# LGPLv2
PERMIT_PACKAGE=		Yes

MODULES=		lang/python \
			x11/gnome

MODPY_ADJ_FILES=	examples/magFocusTracker.py

BUILD_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}
RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR} \
			x11/gnome/at-spi2-core

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=		x11/gtk+3

# connects to DBus
TEST_IS_INTERACTIVE=	x11

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
