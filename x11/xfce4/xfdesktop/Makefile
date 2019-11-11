# $OpenBSD: Makefile,v 1.70 2019/11/11 20:49:29 landry Exp $

COMMENT=	Xfce4 desktop manager

XFCE_PROJECT=	xfdesktop
XFCE_VERSION =	4.14.1
REVISION=	0

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes

CONFIGURE_ARGS=	--enable-thunarx \
		--enable-exo

LIB_DEPENDS=	x11/xfce4/libxfce4ui>=4.13.0 \
		x11/xfce4/exo>=0.11.0 \
		x11/xfce4/garcon>=0.6.0 \
		x11/xfce4/thunar>=1.7.0 \
		x11/xfce4/xfconf>=4.12.1 \
		devel/libnotify \
		devel/libwnck3

WANTLIB += ICE SM X11 X11-xcb XRes Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender fribidi
WANTLIB += atk-1.0 c cairo exo-2 expat
WANTLIB += ffi fontconfig freetype garcon-1 garcon-gtk3-1 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m notify pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread startup-notification-1 thunarx-3
WANTLIB += wnck-3 xcb xcb-util xcb-render xcb-shm xfce4ui-2
WANTLIB += xfce4util xfconf-0 z
WANTLIB += harfbuzz graphite2 iconv intl
WANTLIB += atk-bridge-2.0 cairo-gobject epoxy gdk-3 gtk-3

FAKE_FLAGS=	menudir=${PREFIX}/share/examples/xfdesktop

.include <bsd.port.mk>
