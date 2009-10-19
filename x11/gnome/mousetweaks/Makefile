# $OpenBSD: Makefile,v 1.16 2009/10/19 16:40:46 ajacoutot Exp $

COMMENT=	mouse accessibility enhancements for GNOME

GNOME_PROJECT=	mousetweaks
GNOME_VERSION=	2.28.1

HOMEPAGE=	http://live.gnome.org/Mousetweaks/Home

# GPLv3 - GFDLv1.3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xtst art_lgpl_2 atk-1.0
WANTLIB += bonobo-2 bonobo-activation bonoboui-2 c cairo dbus-1
WANTLIB += dbus-glib-1 expat fontconfig freetype gailutil gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0 gnome-2
WANTLIB += gnomecanvas-2 gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += popt pthread pthread-stubs xcb xml2 z

MODULES=	devel/gconf2 \
		devel/gettext \
		x11/gnome

LIB_DEPENDS=	panel-applet-2.>=2::x11/gnome/applets2 \
		spi,cspi::x11/gnome/at-spi

USE_X11=		Yes
MODGNOME_HELP_FILES= 	Yes
MODGCONF2_SCHEMAS_DIR=	mousetweaks

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
