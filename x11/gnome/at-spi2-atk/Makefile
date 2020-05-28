# $OpenBSD: Makefile,v 1.53 2020/05/28 18:50:52 kmos Exp $

COMMENT=		atk-bridge for at-spi2

GNOME_PROJECT=		at-spi2-atk
GNOME_VERSION=		2.34.2

SHARED_LIBS +=  atk-bridge-2.0       0.1      # 0.0.0

HOMEPAGE=		https://wiki.linuxfoundation.org/en/AT-SPI_on_D-Bus

# LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += atk-1.0 atspi dbus-1 glib-2.0 gmodule-2.0 gobject-2.0

MODULES=		devel/meson \
			x11/gnome

LIB_DEPENDS=		devel/atk \
			x11/gnome/at-spi2-core

# not needed in the package, but build fails in tests/ without this
BUILD_DEPENDS=		textproc/libxml

# DBus
TEST_IS_INTERACTIVE=	x11

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
