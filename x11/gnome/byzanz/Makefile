# $OpenBSD: Makefile,v 1.1.1.1 2010/05/01 07:39:04 jasper Exp $

COMMENT=		simple desktop recording tool

GNOME_VERSION=		0.2.2
GNOME_PROJECT=		byzanz

CATEGORIES=		multimedia

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=		devel/gconf2 \
			devel/gettext \
			x11/gnome

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 atk-1.0 avahi-client avahi-common
WANTLIB += avahi-glib bonobo-2 bonobo-activation bonoboui-2 c
WANTLIB += cairo crypto dbus-1 dbus-glib-1 expat fontconfig freetype
WANTLIB += gailutil gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gnomecanvas-2 gnomevfs-2 gobject-2.0
WANTLIB += gstapp-0.10 gstbase-0.10 gstreamer-0.10 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png popt pthread pthread-stubs ssl util
WANTLIB += xcb xcb-render xcb-render-util xml2 z

LIB_DEPENDS=		panel-applet-2::x11/gnome/panel

MODGCONF2_SCHEMAS_DIR=	byzanz

CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
