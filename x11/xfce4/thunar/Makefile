# $OpenBSD: Makefile,v 1.54 2014/04/14 19:52:45 matthieu Exp $

COMMENT=	Xfce4 file manager

XFCE_VERSION=	1.6.3
XFCE_PROJECT=	Thunar
# :L is here for a reason
PKGNAME=	${DISTNAME:L}
REVISION=	0

SHARED_LIBS=	thunarx-2	0.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

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

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 c cairo dbus-1 dbus-glib-1 exif exo-1 expat
WANTLIB += ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m notify pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs startup-notification-1
WANTLIB += xcb xcb-util xcb-render xcb-shm xfce4panel-1.0 xfce4ui-1
WANTLIB += xfce4util z stdc++ xfconf-0 harfbuzz graphite2

.include <bsd.port.mk>
