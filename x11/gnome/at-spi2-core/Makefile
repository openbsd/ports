# $OpenBSD: Makefile,v 1.60 2020/05/28 18:50:52 kmos Exp $

COMMENT=		service interface for assistive technologies

GNOME_PROJECT=		at-spi2-core
GNOME_VERSION=		2.36.0

SHARED_LIBS +=  atspi                0.5      # 0.0.1

HOMEPAGE=		https://wiki.linuxfoundation.org/en/AT-SPI_on_D-Bus

# LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += X11 Xtst c dbus-1 gio-2.0 glib-2.0 gobject-2.0 intl

MODULES=		devel/meson \
			x11/gnome

LIB_DEPENDS=		devel/glib2 \
			x11/dbus

MODGNOME_TOOLS=		gobject-introspection

# connects to DBus
TEST_IS_INTERACTIVE=	x11

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/at-spi2-core
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/at-spi2-core

.include <bsd.port.mk>
