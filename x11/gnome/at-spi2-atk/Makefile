# $OpenBSD: Makefile,v 1.48 2019/04/18 13:38:05 ajacoutot Exp $

COMMENT=		atk-bridge for at-spi2

GNOME_PROJECT=		at-spi2-atk
GNOME_VERSION=		2.30.1
REVISION=		0

SHARED_LIBS +=  atk-bridge-2.0       0.0      # 0.0.0

HOMEPAGE=		https://wiki.linuxfoundation.org/en/AT-SPI_on_D-Bus

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 atspi dbus-1 glib-2.0 gmodule-2.0 gobject-2.0

MODULES=		devel/meson \
			x11/gnome

LIB_DEPENDS=		devel/atk \
			x11/gnome/at-spi2-core>=${GNOME_VERSION}

# not needed in the package, but build fails in tests/ without this
BUILD_DEPENDS=		textproc/libxml

# needed for ld.bfd(1)
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

# DBus
TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
