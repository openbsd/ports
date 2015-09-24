# $OpenBSD: Makefile,v 1.33 2015/09/24 10:27:02 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		atk-bridge for at-spi2

GNOME_PROJECT=		at-spi2-atk
GNOME_VERSION=		2.18.0

SHARED_LIBS +=  atk-bridge-2.0       0.0      # 0.0

HOMEPAGE=		https://wiki.linuxfoundation.org/en/AT-SPI_on_D-Bus

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 atk-1.0 atspi dbus-1 ffi glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 pcre pthread xcb

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/atk \
			x11/gnome/at-spi2-core>=${GNOME_VERSION}

MODGNOME_CPPFLAGS=	-I${X11BASE}/include

# DBus
TEST_IS_INTERACTIVE=	x11

post-install:
	rm ${PREFIX}/lib/gtk-2.0/modules/*.{a,la}

.include <bsd.port.mk>
