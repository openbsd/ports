# $OpenBSD: Makefile,v 1.74 2019/05/18 14:48:15 landry Exp $

COMMENT=	Xfce4 file manager

XFCE_VERSION=	1.6.17
XFCE_PROJECT=	Thunar
# :L is here for a reason
PKGNAME=	${DISTNAME:L}
PORTROACH=	limitw:1,even

SHARED_LIBS=	thunarx-2	0.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 dbus-glib-1
WANTLIB += exif exo-1 expat ffi fontconfig freetype fribidi gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz iconv intl m
WANTLIB += notify pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread startup-notification-1 xcb xcb-render xcb-shm
WANTLIB += xcb-util xfce4panel-1.0 xfce4ui-1 xfce4util xfconf-0 z

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes
MODXFCE_PURGE_LA =	lib/thunarx-2 lib/xfce4/panel/plugins
NO_TEST=	Yes

CONFIGURE_ENV=	ac_cv_header_sys_ucred_h=yes \
		ac_cv_header_sys_mount_h=yes

FAKE_FLAGS=	defaultsdir=${PREFIX}/share/examples/Thunar

BUILD_DEPENDS =	textproc/gtk-doc

LIB_DEPENDS=	x11/xfce4/exo>=0.10.0 \
		x11/xfce4/libxfce4ui>=4.10.0 \
		devel/libnotify \
		devel/pcre \
		x11/xfce4/xfce4-panel>=4.10.0 \
		graphics/libexif \
		x11/dbus-glib \
		x11/dbus

RUN_DEPENDS=	x11/gnome/gvfs


.include <bsd.port.mk>
