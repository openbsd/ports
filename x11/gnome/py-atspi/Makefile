COMMENT=		python bindings for at-spi2

GNOME_PROJECT=		pyatspi
GNOME_VERSION=		2.58.1
PKGNAME=		py-atspi-${GNOME_VERSION}

# LGPLv2
PERMIT_PACKAGE=		Yes

MODULES=		devel/meson \
			lang/python \
			x11/gnome

MODPY_ADJ_FILES=	examples/magFocusTracker.py

BUILD_DEPENDS=		devel/py-gobject3
RUN_DEPENDS=		devel/py-gobject3 \
			x11/gnome/at-spi2-core

# connects to DBus
TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
