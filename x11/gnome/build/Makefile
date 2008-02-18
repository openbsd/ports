# $OpenBSD: Makefile,v 1.1.1.1 2008/02/18 18:47:45 jasper Exp $

COMMENT=	Gnome Build Framework (GBF)

GNOME_PROJECT=	gnome-build
GNOME_VERSION=	0.2.2
SHARED_LIBS +=  gbf-1                0.0      # .1.0
SHARED_LIBS +=  gbf-widgets-1        0.0      # .1.0
CATEGORIES=	devel

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
		gnomecanvas-2 gnomeui-2 gnomevfs-2 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre png popt ssl util xml2 z

LIB_DEPENDS=	gdl-1,gdl-gnome-1::x11/gnome/gdl
RUN_DEPENDS=	::devel/p5-Locale-gettext

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
