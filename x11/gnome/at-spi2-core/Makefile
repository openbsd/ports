# $OpenBSD: Makefile,v 1.47 2017/10/31 07:14:25 ajacoutot Exp $

COMMENT=		service interface for assistive technologies

GNOME_PROJECT=		at-spi2-core
GNOME_VERSION=		2.26.2

SHARED_LIBS +=  atspi                0.2      # 0.1

HOMEPAGE=		https://wiki.linuxfoundation.org/en/AT-SPI_on_D-Bus

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xi Xtst c dbus-1 ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 iconv intl pcre pthread xcb z

MODULES=		x11/gnome

LIB_DEPENDS=		devel/glib2 \
			x11/dbus

CONFIGURE_STYLE=	gnu

MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_TOOLS=		gobject-introspection

# connects to DBus
TEST_IS_INTERACTIVE=	x11

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/at-spi2-core

.include <bsd.port.mk>
