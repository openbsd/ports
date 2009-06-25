# $OpenBSD: Makefile,v 1.9 2009/06/25 00:38:38 sthen Exp $

COMMENT=		implementation of the ATK interface for GNOME widgets

GNOME_PROJECT=		libgail-gnome
GNOME_VERSION=		1.20.1
PKGNAME=		${DISTNAME}p3

CATEGORIES=		devel

HOMEPAGE=		http://developer.gnome.org/projects/gap/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			x11/gnome

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender Xtst art_lgpl_2 atk-1.0 bonobo-2 \
		bonobo-activation bonoboui-2 cairo crypto dbus-1 dbus-glib-1 \
		expat fontconfig freetype gailutil gconf-2 gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 \
		gnome-2 gnome-keyring gnomecanvas-2 gnomeui-2 gnomevfs-2 \
		gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png popt ssl util xml2 z \
		avahi-client avahi-common avahi-glib

LIB_DEPENDS=		spi::x11/gnome/at-spi \
			panel-applet-2::x11/gnome/panel

CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
