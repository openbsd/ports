# $OpenBSD: Makefile,v 1.2 2008/02/18 18:27:02 jasper Exp $

COMMENT=	GNOME Devtool Libraries (GDL)

GNOME_PROJECT=	gdl
GNOME_VERSION=	0.7.9
PKGNAME=	${DISTNAME}p0
SHARED_LIBS +=  gdl-1                0.0      # .0.0
SHARED_LIBS +=  gdl-gnome-1          0.0      # .0.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext \
		x11/gnome

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 audiofile bonobo-2 bonobo-activation \
		bonoboui-2 cairo crypto dbus-1 dbus-glib-1 esd expat \
		fontconfig freetype gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 \
		glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring \
		gnomecanvas-2 gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
		jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre png \
		popt ssl util xml2 z

LIB_DEPENDS=	gnomeui-2::x11/gnome/libgnomeui

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
