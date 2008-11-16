# $OpenBSD: Makefile,v 1.7 2008/11/16 21:45:28 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	document centric objects and utilities

GNOME_PROJECT=	goffice
GNOME_VERSION=	0.6.5
V=		${GNOME_VERSION}
SHARED_LIBS +=	goffice-0.6          1.0      # .6.5
CATEGORIES=	devel

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 audiofile bonobo-2 bonobo-activation \
		bonoboui-2 bz2 cairo crypto dbus-1 dbus-glib-1 esd \
		expat fontconfig freetype gailutil gconf-2 gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 \
		gnome-keyring gnomecanvas-2 gnomevfs-2 gobject-2.0 \
		gsf-1 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png popt ssl util xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		glade-2.0.>=0.6::devel/libglade2 \
			gnomeui-2.>=1800::x11/gnome/libgnomeui \
			gsf-gnome-1.>=114:libgsf-gnome-*:devel/libgsf,-gnome \

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
SUBST_VARS=		V

.include <bsd.port.mk>
