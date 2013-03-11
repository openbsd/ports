# $OpenBSD: Makefile,v 1.22 2013/03/11 11:46:10 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	atk-bridge for at-spi2

GNOME_PROJECT=	at-spi2-atk
GNOME_VERSION=	2.6.2

SHARED_LIBS +=  atk-bridge-2.0            0.0 # 0.0

HOMEPAGE=	http://www.linuxfoundation.org/en/AT-SPI_on_D-Bus

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 atk-1.0 atspi dbus-1 ffi glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 pcre pthread xcb

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

LIB_DEPENDS=	x11/gnome/at-spi2-core>=2.6.2 \
		devel/atk

MODGNOME_CPPFLAGS=-I${X11BASE}/include

# connects to DBus
TEST_IS_INTERACTIVE=	x11

post-install:
	rm ${PREFIX}/lib/gtk-2.0/modules/*.{a,la}

.include <bsd.port.mk>
