# $OpenBSD: Makefile,v 1.2 2008/10/16 21:48:33 jasper Exp $

COMMENT=	.NET language bindings for assorted GNOME libraries

VERSION=	2.20.0
DISTNAME=	gnome-sharp-${VERSION}
PKGNAME=	mono-gnome-${VERSION}p0
CATEGORIES=	x11 x11/gnome

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ftp.novell.com/pub/mono/sources/gnome-sharp2/
EXTRACT_SUFX=	.tar.bz2

MODULES=	lang/mono textproc/intltool devel/gettext

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 audiofile bonobo-2 \
		bonobo-activation bonoboui-2 cairo crypto dbus-1 dbus-glib-1 \
		esd expat fontconfig freetype gailutil gconf-2 gdk-x11-2.0 \
		gdk_pixbuf-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 \
		gnome-keyring gnomecanvas-2 gnomeui-2 gnomevfs-2 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 jpeg m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png popt ssl util xml2 z

LIB_DEPENDS=	panel-applet-2::x11/gnome/panel \
		gnomeprintui-2-2::x11/gnome/libgnomeprintui \
		gnomeprint-2-2::x11/gnome/libgnomeprint

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
