# $OpenBSD: Makefile,v 1.22 2014/06/03 11:37:56 rpointel Exp $

COMMENT=	python bindings for at-spi2

GNOME_PROJECT=	pyatspi
GNOME_VERSION=	2.12.0

REVISION = 0

PKGNAME=	py-atspi-${GNOME_VERSION}

HOMEPAGE=	https://wiki.linuxfoundation.org/en/AT-SPI_on_D-Bus

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/gnome \
		lang/python

MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}
MODPY_ADJ_FILES=examples/magFocusTracker.py

PKG_ARCH=	*

BUILD_DEPENDS=	devel/py-gobject3${MODPY_FLAVOR}
RUN_DEPENDS=	devel/py-gobject3${MODPY_FLAVOR} \
		x11/gnome/at-spi2-core>=2.12.0

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=		x11/gtk+3

# connects to DBus
TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
