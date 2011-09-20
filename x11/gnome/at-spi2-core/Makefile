# $OpenBSD: Makefile,v 1.6 2011/09/20 21:10:00 jasper Exp $

COMMENT=	service interface for assistive technologies

GNOME_PROJECT=	at-spi2-core
GNOME_VERSION=	2.0.2
REVISION=	0

SHARED_LIBS +=  atspi                     0.0 # 0.1

HOMEPAGE=	http://www.linuxfoundation.org/en/AT-SPI_on_D-Bus

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xi Xtst c dbus-1 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 pcre pthread
WANTLIB += pthread-stubs xcb z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	x11/dbus \
		devel/glib2

MODGNOME_TOOLS= goi

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS= --disable-xevie

# connects to DBus
REGRESS_IS_INTERACTIVE=	x11

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/at-spi2-core

.include <bsd.port.mk>
