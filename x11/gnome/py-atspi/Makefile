# $OpenBSD: Makefile,v 1.39 2020/05/14 15:58:34 ajacoutot Exp $

COMMENT=		python bindings for at-spi2

GNOME_PROJECT=		pyatspi
GNOME_VERSION=		2.36.0
PKGNAME=		py-atspi-${GNOME_VERSION}

HOMEPAGE=		https://wiki.linuxfoundation.org/en/AT-SPI_on_D-Bus

# LGPLv2
PERMIT_PACKAGE=		Yes

MODULES=		lang/python \
			x11/gnome

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
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
