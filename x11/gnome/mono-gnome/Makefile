# $OpenBSD: Makefile,v 1.13 2009/08/11 08:39:39 ajacoutot Exp $

COMMENT=	.NET language bindings for assorted GNOME libraries

GNOME_PROJECT=	gnome-sharp
GNOME_VERSION=	2.20.0
PKGNAME=	mono-gnome-${VERSION}p11

CATEGORIES=	x11

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext \
		lang/mono \
		x11/gnome

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation \
		bonoboui-2 cairo crypto dbus-1 dbus-glib-1 expat \
		fontconfig freetype gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 \
		glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring \
		gnomecanvas-2 gnomeprint-2-2 gnomeui-2 gnomevfs-2 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png popt ssl util xml2 z gio-2.0 \
		avahi-client avahi-common avahi-glib pthread-stubs xcb

LIB_DEPENDS=	panel-applet-2::x11/gnome/panel \
		gnomeprintui-2-2::x11/gnome/libgnomeprintui

RUN_DEPENDS=	::lang/mono \
		::x11/mono-gtk2
BUILD_DEPENDS=	${RUN_DEPENDS}

DLLMAP_FILES=	art/art-sharp.dll.config \
		gnome/gnome-sharp.dll.config \
		gconf/GConf/gconf-sharp.dll.config \
		gnomevfs/gnome-vfs-sharp.dll.config

CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
