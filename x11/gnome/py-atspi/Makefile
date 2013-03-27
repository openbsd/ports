# $OpenBSD: Makefile,v 1.13 2013/03/27 17:53:52 ajacoutot Exp $

COMMENT=	python bindings for at-spi2

GNOME_PROJECT=	pyatspi
GNOME_VERSION=	2.8.0

PKGNAME=	py-atspi-${GNOME_VERSION}

HOMEPAGE=	https://wiki.linuxfoundation.org/en/AT-SPI_on_D-Bus

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/gnome \
		lang/python

MODPY_ADJ_FILES=examples/magFocusTracker.py

PKG_ARCH=	*

BUILD_DEPENDS=	devel/py-gobject3>=3.8.0
RUN_DEPENDS=	devel/py-gobject3>=3.8.0 \
		x11/gnome/at-spi2-core>=2.8.0

CONFIGURE_ARGS=	--with-python=${MODPY_BIN}

# connects to DBus
TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
