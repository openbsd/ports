# $OpenBSD: Makefile,v 1.24 2007/07/05 22:50:10 jasper Exp $

COMMENT=		user interface components for bonobo

GNOME_PROJECT=		libbonoboui
GNOME_VERSION=		2.18.0
SHARED_LIBS +=	bonoboui-2         1.0        # .0.0

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcursor Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 \
		audiofile bonobo-2 bonobo-activation c cairo crypto \
		dbus-1 dbus-glib-1 esd expat fontconfig freetype gconf-2 \
		gdk-x11-2.0 gdk_pixbuf-2.0 glade-2.0 glib-2.0 glitz \
		gmodule-2.0 gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 png pthread \
		ssl util xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		popt::devel/popt \
			gnome-2.>=1800::x11/gnome/libgnome \
			gnomecanvas-2.>=1400::x11/gnome/libgnomecanvas

USE_X11=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
