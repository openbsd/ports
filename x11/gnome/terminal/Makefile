# $OpenBSD: Makefile,v 1.49 2009/06/10 20:36:30 kili Exp $

COMMENT=	GNOME terminal

GNOME_PROJECT=	gnome-terminal
GNOME_VERSION=	2.24.3
PKGNAME=	${DISTNAME}p8

# GPLv2/LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xft Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 avahi-client avahi-common \
		avahi-glib bonobo-2 bonobo-activation \
		bonoboui-2 c cairo crypto dbus-1 dbus-glib-1 expat \
		fontconfig freetype gailutil gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring \
		gnomecanvas-2 gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
		m ncurses pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pangoxft-1.0 pcre pixman-1 png popt pthread ssl util xml2 z

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

LIB_DEPENDS=	gnomeui-2::x11/gnome/libgnomeui \
		startup-notification-1::devel/startup-notification \
		vte.>=11::devel/vte

MODGNOME_HELP_FILES=	Yes
USE_X11=	Yes
DESKTOP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR= gnome-terminal
CONFIGURE_ARGS= --with-widget=vte \
		--disable-scrollkeeper
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
