# $OpenBSD: Makefile,v 1.39 2013/01/02 19:10:52 landry Exp $

COMMENT=	Xfce4 vte-based terminal

XFCE_VERSION=	0.6.1
XFCE_GOODIE=	xfce4-terminal

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes
USE_GROFF =	Yes

LIB_DEPENDS=	x11/xfce4/libxfce4ui \
		devel/vte

WANTLIB=	X11 X11-xcb atk-1.0 c gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 \
		ICE SM Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender cairo expat fontconfig freetype \
		gmodule-2.0 gthread-2.0 m ncurses pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs \
		xcb xcb-render GL Xxf86vm drm xcb-shm z xcb-aux vte \
		glib-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 xfce4util ffi stdc++ \
		util harfbuzz icudata icule icuuc startup-notification-1 xfce4ui-1

.include <bsd.port.mk>
