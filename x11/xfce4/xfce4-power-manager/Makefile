# $OpenBSD: Makefile,v 1.14 2014/03/27 19:17:02 ajacoutot Exp $

COMMENT =	Xfce4 power manager

XFCE_VERSION =	1.2.0
XFCE_GOODIE =	xfce4-power-manager
REVISION =	4

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	x11/xfce4
MODXFCE_DESKTOP_FILE =	Yes
MODXFCE_ICON_CACHE =	Yes

LIB_DEPENDS =	x11/xfce4/xfce4-panel \
		devel/libnotify

RUN_DEPENDS =	sysutils/upower

# share/polkit-1/actions/org.xfce.power.policy
RUN_DEPENDS +=	sysutils/polkit

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=	sysutils/consolekit

CONFIGURE_ENV +=ac_cv_lib_Xext_DPMSQueryExtension=yes
FAKE_FLAGS =	autostartdir=${PREFIX}/share/examples/xfce4-power-manager

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1
WANTLIB += dbus-glib-1 expat ffi fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz m notify
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs startup-notification-1 xcb
WANTLIB += xcb-aux xcb-render xcb-shm xfce4panel-1.0 xfce4ui-1
WANTLIB += xfce4util xfconf-0 z

.include <bsd.port.mk>
