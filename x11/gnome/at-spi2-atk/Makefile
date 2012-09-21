# $OpenBSD: Makefile,v 1.16 2012/09/21 13:24:51 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	atk-bridge for at-spi2

GNOME_PROJECT=	at-spi2-atk
GNOME_VERSION=	2.5.92

SHARED_LIBS +=  atk-bridge-2.0            0.0 # 0.0

HOMEPAGE=	http://www.linuxfoundation.org/en/AT-SPI_on_D-Bus

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 atk-1.0 atspi dbus-1 ffi glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 pcre pthread xcb

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

LIB_DEPENDS=	x11/gnome/at-spi2-core>=2.5.92 \
		devel/atk

MODGNOME_CPPFLAGS=-I${X11BASE}/include

AUTOCONF_VERSION=2.69
CONFIGURE_STYLE=autoconf

CONFIGURE_ARGS= --enable-p2p

# connects to DBus
REGRESS_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
