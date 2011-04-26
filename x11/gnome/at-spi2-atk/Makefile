# $OpenBSD: Makefile,v 1.1.1.1 2011/04/26 18:30:23 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	atk-bridge for at-spi2

GNOME_PROJECT=	at-spi2-atk
GNOME_VERSION=	2.0.1

HOMEPAGE=	http://www.linuxfoundation.org/en/AT-SPI_on_D-Bus

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xau Xdmcp atk-1.0 atspi dbus-1 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 pcre pthread-stubs
WANTLIB += xcb

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

LIB_DEPENDS=	x11/gnome/at-spi2-core \
		devel/atk

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS= ${CONFIGURE_SHARED} \
		--enable-p2p

# connects to DBus
REGRESS_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
