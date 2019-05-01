# $OpenBSD: Makefile,v 1.25 2019/05/01 10:07:53 ajacoutot Exp $

COMMENT=	Xfce4 task manager and system monitor

XFCE_VERSION=	1.2.2
XFCE_GOODIE=	xfce4-taskmanager
REVISION=	0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes

LIB_DEPENDS=	x11/gtk+3 \
		devel/libwnck3

WANTLIB += ICE SM X11 XRes Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xmu Xrandr Xrender Xt atk-1.0 atk-bridge-2.0
WANTLIB += c cairo cairo-gobject epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz iconv
WANTLIB += intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png16 pthread wnck-3 xcb xcb-render xcb-shm z

.include <bsd.port.mk>
