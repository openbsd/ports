# $OpenBSD: Makefile,v 1.33 2009/06/10 20:27:09 kili Exp $

COMMENT=		user interface components for GNOME

GNOME_PROJECT=		libgnomeui
GNOME_VERSION=		2.24.1
PKGNAME=		${DISTNAME}p0

SHARED_LIBS +=	gnomeui-2      2400.0         # .2400.0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 avahi-client avahi-common \
		avahi-glib bonobo-2 bonobo-activation \
		cairo crypto dbus-1 dbus-glib-1 expat fontconfig \
		freetype gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 \
		glade-2.0 glib-2.0 glitz gmodule-2.0 gnomevfs-2 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png popt ssl util xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		gnome-keyring.>=1::x11/gnome/keyring \
			gnome-2.>=1800::x11/gnome/libgnome \
			gnomecanvas-2.>=1400::x11/gnome/libgnomecanvas \
			bonoboui-2.>=1::x11/gnome/libbonoboui

USE_X11=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
