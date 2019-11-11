# $OpenBSD: Makefile,v 1.77 2019/11/11 20:46:00 landry Exp $

COMMENT=	Xfce4 file manager

XFCE_VERSION=	1.8.10
XFCE_PROJECT=	thunar
PORTROACH=	limitw:1,even

SHARED_LIBS=	thunarx-3	0.0

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 c cairo cairo-gobject
WANTLIB += exif epoxy exo-2 expat ffi fontconfig freetype fribidi gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz iconv intl m
WANTLIB += notify pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread startup-notification-1 xcb xcb-render xcb-shm
WANTLIB += xcb-util xfce4kbd-private-3 xfce4ui-2 xfce4util xfconf-0 z

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes
MODXFCE_PURGE_LA =	lib/thunarx-3 lib/xfce4/panel/plugins
MODXFCE_WANTLIB =	xfce4panel-2.0
NO_TEST=	Yes

CONFIGURE_ENV=	ac_cv_header_sys_ucred_h=yes \
		ac_cv_header_sys_mount_h=yes

FAKE_FLAGS=	defaultsdir=${PREFIX}/share/examples/Thunar

BUILD_DEPENDS =	textproc/gtk-doc

LIB_DEPENDS=	x11/xfce4/exo>=0.10.0 \
		x11/xfce4/libxfce4ui>=4.13 \
		x11/xfce4/xfce4-panel \
		devel/libnotify \
		devel/pcre \
		graphics/libexif

RUN_DEPENDS=	x11/gnome/gvfs

.include <bsd.port.mk>
