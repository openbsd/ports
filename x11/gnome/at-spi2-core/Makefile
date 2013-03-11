# $OpenBSD: Makefile,v 1.20 2013/03/11 11:46:10 espie Exp $

COMMENT=	service interface for assistive technologies

GNOME_PROJECT=	at-spi2-core
GNOME_VERSION=	2.6.3

SHARED_LIBS +=  atspi                     0.1 # 0.1

HOMEPAGE=	http://www.linuxfoundation.org/en/AT-SPI_on_D-Bus

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xext Xi Xtst c dbus-1 ffi gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 pcre pthread xcb
WANTLIB += z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	x11/dbus \
		devel/glib2

MODGNOME_TOOLS= goi

CONFIGURE_ARGS= --disable-xevie

# connects to DBus
TEST_IS_INTERACTIVE=	x11

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/at-spi2-core

.include <bsd.port.mk>
