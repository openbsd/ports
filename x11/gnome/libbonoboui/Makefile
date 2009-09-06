# $OpenBSD: Makefile,v 1.38 2009/09/06 10:46:25 ajacoutot Exp $

COMMENT=		user interface components for bonobo

GNOME_PROJECT=		libbonoboui
GNOME_VERSION=		2.24.1
PKGNAME=		${DISTNAME}p1

SHARED_LIBS +=	bonoboui-2         3.0        # .0.0

# GPLv2/LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 avahi-client avahi-common \
		avahi-glib bonobo-2 bonobo-activation pthread-stubs xcb \
		c cairo crypto dbus-1 dbus-glib-1 expat fontconfig \
		freetype gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 \
		glade-2.0 glib-2.0 glitz gmodule-2.0 gnomevfs-2 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png pthread ssl util xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		popt::devel/popt \
			gnome-2.>=1800::x11/gnome/libgnome \
			gnomecanvas-2.>=1400::x11/gnome/libgnomecanvas

DESKTOP_FILES=		Yes
USE_X11=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

REGRESS_IS_INTERACTIVE= x11

.include <bsd.port.mk>
