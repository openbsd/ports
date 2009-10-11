# $OpenBSD: Makefile,v 1.52 2009/10/11 10:28:01 jasper Exp $

COMMENT=	GNOME terminal

GNOME_PROJECT=	gnome-terminal
GNOME_VERSION=	2.28.0

# GPLv2/LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB += dbus-1 dbus-glib-1 execinfo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 m ncurses pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs startup-notification-1 xcb xcb-atom xcb-aux
WANTLIB += xcb-event z

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

LIB_DEPENDS=	vte.>=13::devel/vte

MODGNOME_HELP_FILES=	Yes
USE_X11=	Yes
DESKTOP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR= gnome-terminal
CONFIGURE_ARGS= 	--with-widget=vte \
			--disable-scrollkeeper
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
