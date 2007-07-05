# $OpenBSD: Makefile,v 1.6 2007/07/05 22:50:10 jasper Exp $

COMMENT=		keyboard configuration library

GNOME_PROJECT=		libgnomekbd
GNOME_VERSION=		2.18.2
SHARED_LIBS +=	gnomekbd             1.0      # .1.0
SHARED_LIBS +=	gnomekbdui           1.0      # .1.0
CATEGORIES=		devel

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcursor Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 \
		audiofile bonobo-2 bonobo-activation bonoboui-2 c cairo \
		crypto dbus-1 dbus-glib-1 esd expat fontconfig freetype \
		gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz gmodule-2.0 \
		gnome-2 gnome-keyring gnomecanvas-2 gnomevfs-2 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 jpeg m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 png popt pthread ssl util xkbfile xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		glade-2.0.>=0.8::devel/libglade2 \
			gnomeui-2::x11/gnome/libgnomeui \
			xklavier.>=12.0::x11/gnome/libxklavier

USE_X11=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-schemas-install \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/libgnomekbd
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=		Yes # Broken, but not very usefull to fix

.include <bsd.port.mk>
