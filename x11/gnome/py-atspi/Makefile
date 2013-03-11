# $OpenBSD: Makefile,v 1.12 2013/03/11 11:46:11 espie Exp $

COMMENT=	python bindings for at-spi2

GNOME_PROJECT=	pyatspi
GNOME_VERSION=	2.6.0

PKGNAME=	py-atspi-${GNOME_VERSION}

HOMEPAGE=	http://www.linuxfoundation.org/en/AT-SPI_on_D-Bus

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/gnome \
		lang/python

MODPY_ADJ_FILES=examples/magFocusTracker.py

PKG_ARCH=	*

BUILD_DEPENDS=	devel/py-gobject3>=3.4.0
RUN_DEPENDS=	devel/py-gobject3>=3.4.0 \
		x11/gnome/at-spi2-core>=2.6.0

# connects to DBus
TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
