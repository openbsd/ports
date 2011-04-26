# $OpenBSD: Makefile,v 1.1.1.1 2011/04/26 18:27:55 ajacoutot Exp $

COMMENT=	service interface for assistive technologies

GNOME_PROJECT=	at-spi2-core
GNOME_VERSION=	2.0.1

SHARED_LIBS +=  atspi                     0.0 # 0.1

HOMEPAGE=	http://www.linuxfoundation.org/en/AT-SPI_on_D-Bus

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xi Xtst c dbus-1 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 pcre pthread
WANTLIB += pthread-stubs xcb z

MODULES=	devel/gettext \
		x11/gnome

BUILD_DEPENDS=	devel/gobject-introspection

LIB_DEPENDS=	x11/dbus \
		devel/glib2

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS= ${CONFIGURE_SHARED} \
		--disable-gtk-doc \
		--disable-xevie \
		--enable-introspection

# connects to DBus
REGRESS_IS_INTERACTIVE=	x11

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/at-spi2-core

.include <bsd.port.mk>
