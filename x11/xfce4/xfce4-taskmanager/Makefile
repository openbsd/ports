# $OpenBSD: Makefile,v 1.20 2017/02/18 14:54:31 landry Exp $

COMMENT=	Xfce4 task manager and system monitor

XFCE_VERSION=	1.2.0
XFCE_GOODIE=	xfce4-taskmanager

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes

LIB_DEPENDS=	x11/gtk+2 \
		devel/libwnck

#LIB_DEPENDS=	x11/gtk+3 \
#		devel/libwnck3
#CONFIGURE_ARGS+=--enable-gtk3

WANTLIB += X11 X11-xcb XRes Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 c cairo expat ffi fontconfig freetype
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += startup-notification-1 xcb xcb-util xcb-render
WANTLIB += xcb-shm z harfbuzz graphite2 iconv intl
WANTLIB += gdk-x11-2.0 gtk-x11-2.0 wnck-1
WANTLIB += ICE SM Xmu Xt

#WANTLIB += atk-bridge-2.0 atspi cairo-gobject dbus-1
#WANTLIB += epoxy gdk-3 gtk-3 wnck-3

.include <bsd.port.mk>
