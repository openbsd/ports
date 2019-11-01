# $OpenBSD: Makefile,v 1.57 2019/11/01 19:34:03 ajacoutot Exp $

COMMENT=		service interface for assistive technologies

GNOME_PROJECT=		at-spi2-core
GNOME_VERSION=		2.34.0

SHARED_LIBS +=  atspi                0.4      # 0.0.1

HOMEPAGE=		https://wiki.linuxfoundation.org/en/AT-SPI_on_D-Bus

# LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += X11 Xtst c dbus-1 gio-2.0 glib-2.0 gobject-2.0 intl

MODULES=		devel/meson \
			x11/gnome

LIB_DEPENDS=		devel/glib2 \
			x11/dbus

# needed for ld.bfd(1)
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

MODGNOME_TOOLS=		gobject-introspection

# connects to DBus
TEST_IS_INTERACTIVE=	x11

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/at-spi2-core
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/at-spi2-core

.include <bsd.port.mk>
