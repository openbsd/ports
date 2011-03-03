# $OpenBSD: Makefile,v 1.9 2011/03/03 21:19:59 landry Exp $

COMMENT=	Xfce4 alternative notification daemon

XFCE_VERSION=	0.2.1
XFCE_GOODIE=	xfce4-notifyd

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES=	Yes

LIB_DEPENDS=	x11/xfce4/libxfce4ui \
		x11/xfce4/xfconf

# uses notify-send for previews
RUN_DEPENDS =	devel/libnotify

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext xfce4ui-1 \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 \
		dbus-glib-1 expat fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pixman-1 png pthread xfce4util xfconf-0 z pthread-stubs \
		gthread-2.0 xcb-render xcb GL Xxf86vm drm xcb-shm \
		ICE SM execinfo pcre startup-notification-1 xcb-atom \
		xcb-aux xcb-event

.include <bsd.port.mk>
