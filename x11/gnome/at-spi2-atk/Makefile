# $OpenBSD: Makefile,v 1.43 2018/03/13 12:41:29 ajacoutot Exp $

COMMENT=		atk-bridge for at-spi2

GNOME_PROJECT=		at-spi2-atk
GNOME_VERSION=		2.26.2

SHARED_LIBS +=  atk-bridge-2.0       0.0      # 0.0

HOMEPAGE=		https://wiki.linuxfoundation.org/en/AT-SPI_on_D-Bus

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xi Xtst atk-1.0 atspi dbus-1 ffi glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 iconv intl pcre pthread xcb

MODULES=		x11/gnome

CONFIGURE_STYLE=	gnu

LIB_DEPENDS=		devel/atk \
			x11/gnome/at-spi2-core>=${GNOME_VERSION}

MODGNOME_CPPFLAGS=	-I${X11BASE}/include

# DBus
TEST_IS_INTERACTIVE=	x11

post-install:
	rm ${PREFIX}/lib/gtk-2.0/modules/*.{a,la}

.include <bsd.port.mk>
