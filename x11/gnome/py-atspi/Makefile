# $OpenBSD: Makefile,v 1.18 2013/05/30 13:09:21 ajacoutot Exp $

COMMENT=	python bindings for at-spi2

GNOME_PROJECT=	pyatspi
GNOME_VERSION=	2.8.0
REVISION=	3

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
		x11/gnome/at-spi2-core

# connects to DBus
TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
