# $OpenBSD: Makefile,v 1.31 2008/11/18 14:00:00 landry Exp $

COMMENT=		Eazel Extensions Library

GNOME_PROJECT=		eel
GNOME_VERSION=		2.20.0
SHARED_LIBS +=	eel-2                21.0     # .22.0
CATEGORIES=		devel
PKGNAME=		${DISTNAME}p3

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 audiofile bonobo-2 bonobo-activation \
		bonoboui-2 cairo crypto dbus-1 dbus-glib-1 esd expat \
		fam fontconfig freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 \
		glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring \
		gnomecanvas-2 gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
		jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png \
		popt rpcsvc ssl stdc++ util xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		startup-notification-1::devel/startup-notification \
			gnome-desktop-2.>=4::x11/gnome/desktop \
			gnomeui-2::x11/gnome/libgnomeui \
			gnome-menu::x11/gnome/menus

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
