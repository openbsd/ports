# $OpenBSD: Makefile,v 1.51 2014/04/14 19:52:46 matthieu Exp $

COMMENT=	Xfce4 desktop manager

XFCE_PROJECT=	xfdesktop
XFCE_VERSION =	4.10.2
REVISION =	1

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes

CONFIGURE_ARGS=	--enable-thunarx \
		--enable-exo

LIB_DEPENDS=	x11/xfce4/libxfce4ui>=4.9.0 \
		x11/xfce4/exo>=0.7.0 \
		x11/xfce4/garcon>=0.1.2 \
		x11/xfce4/thunar>=1.2.0 \
		x11/xfce4/xfconf>=4.8.0 \
		devel/libnotify \
		devel/libwnck

WANTLIB += ICE SM X11 X11-xcb XRes Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 c cairo dbus-1 dbus-glib-1 exo-1 expat
WANTLIB += ffi fontconfig freetype garcon-1 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m notify pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs startup-notification-1
WANTLIB += thunarx-2 wnck-1 xcb xcb-util xcb-render xcb-shm xfce4ui-1
WANTLIB += xfce4util xfconf-0 z
WANTLIB += harfbuzz

FAKE_FLAGS=	menudir=${PREFIX}/share/examples/xfdesktop

.include <bsd.port.mk>
