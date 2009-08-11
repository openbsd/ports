# $OpenBSD: Makefile,v 1.38 2009/08/11 08:39:38 ajacoutot Exp $

COMMENT=		Eazel Extensions Library

GNOME_PROJECT=		eel
GNOME_VERSION=		2.24.1
PKGNAME=		${DISTNAME}p5

SHARED_LIBS +=	eel-2                22.0     # .26.1
CATEGORIES=		devel

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 avahi-client avahi-common \
		avahi-glib bonobo-2 bonobo-activation pthread-stubs xcb \
		bonoboui-2 cairo crypto dbus-1 dbus-glib-1 expat \
		fontconfig freetype gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 \
		gnome-keyring gnomecanvas-2 gnomevfs-2 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png popt ssl util xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		startup-notification-1::devel/startup-notification \
			gnome-desktop-2.>=4::x11/gnome/desktop \
			gnomeui-2::x11/gnome/libgnomeui

USE_X11=		Yes
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# The regression tests require a running instance of X.
# You will also need to set the XAUTHORITY environment variable to point
# to the appropriate .Xauthority file.
REGRESS_IS_INTERACTIVE= Yes
REGRESS_FLAGS= 	DISPLAY=${DISPLAY} XAUTHORITY=${XAUTHORITY}

.include <bsd.port.mk>
