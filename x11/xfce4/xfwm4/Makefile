# $OpenBSD: Makefile,v 1.28 2010/07/27 12:58:43 landry Exp $

COMMENT=	Xfce4 window manager

XFCE_PROJECT=	xfwm4
REVISION=	0

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES=	Yes

LIB_DEPENDS=	::x11/xfce4/libxfcegui4 \
		::devel/libwnck \
		::x11/xfce4/xfconf

WANTLIB= 	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender XRes atk-1.0 c cairo dbus-1 \
		dbus-glib-1 expat fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0 wnck-1 \
		glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png xfconf-0 \
		pthread startup-notification-1 xfce4util xml2 z xfcegui4 \
		pthread-stubs xcb execinfo xcb-atom xcb-aux xcb-event \
		gthread-2.0 xcb-render xcb-render-util xfce4kbd-private


.include <bsd.port.mk>
