# $OpenBSD: Makefile,v 1.27 2017/11/26 18:59:32 landry Exp $

COMMENT=	Xfce4 generic scriptable monitor panel plugin

XFCE_VERSION=	4.0.1
XFCE_PLUGIN=	genmon
REVISION=	0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
MODXFCE_WANTLIB =	xfce4panel-2.0

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xtst atk-1.0 cairo
WANTLIB += expat ffi fontconfig freetype gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 harfbuzz m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += startup-notification-1 xcb xcb-render xcb-shm xcb-util
WANTLIB += xfce4ui-2 xfce4util z iconv intl
WANTLIB += atk-bridge-2.0 atspi cairo-gobject dbus-1 epoxy gdk-3 gtk-3

.include <bsd.port.mk>
