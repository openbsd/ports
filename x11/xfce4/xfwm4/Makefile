# $OpenBSD: Makefile,v 1.31 2011/01/18 20:43:19 landry Exp $

COMMENT=	Xfce4 window manager

XFCE_PROJECT=	xfwm4

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES=	Yes

LIB_DEPENDS=	x11/xfce4/libxfce4ui>=4.8.0 \
		devel/libwnck \
		x11/xfce4/xfconf>=4.8.0

WANTLIB= 	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender XRes atk-1.0 c cairo dbus-1 \
		dbus-glib-1 expat fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glib-2.0 GL Xxf86vm drm xcb-shm wnck-1 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png xfconf-0 \
		pthread startup-notification-1 xfce4util z xfce4ui-1 \
		pthread-stubs xcb execinfo xcb-atom xcb-aux xcb-event \
		gthread-2.0 xcb-render xfce4kbd-private-2


.include <bsd.port.mk>
