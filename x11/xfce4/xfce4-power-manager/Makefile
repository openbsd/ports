# $OpenBSD: Makefile,v 1.6 2011/12/03 22:39:12 ajacoutot Exp $

COMMENT =	Xfce4 power manager

XFCE_VERSION =	1.0.10
XFCE_GOODIE =	xfce4-power-manager
REVISION =      1

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES =	x11/xfce4
MODXFCE_DESKTOP_FILE =	Yes
MODXFCE_ICON_CACHE =	Yes

LIB_DEPENDS =	x11/xfce4/xfce4-panel \
		devel/libnotify

RUN_DEPENDS =	sysutils/upower

CONFIGURE_ENV +=ac_cv_lib_Xext_DPMSQueryExtension=yes
FAKE_FLAGS =	autostartdir=${PREFIX}/share/examples/xfce4-power-manager

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 c cairo dbus-1 dbus-glib-1 drm expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m notify
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs startup-notification-1 xcb
WANTLIB += xcb-aux xcb-render xcb-shm xfce4panel-1.0 xfce4ui-1
WANTLIB += xfce4util xfconf-0 z

.include <bsd.port.mk>
