# $OpenBSD: Makefile,v 1.34 2019/08/15 06:44:53 landry Exp $

COMMENT =	Xfce4 power manager

XFCE_VERSION =	1.6.5
XFCE_GOODIE =	xfce4-power-manager

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES =	x11/xfce4
MODXFCE_DESKTOP_FILE =	Yes
MODXFCE_ICON_CACHE =	Yes
MODXFCE_PURGE_LA =	lib/xfce4/panel/plugins

LIB_DEPENDS =	x11/xfce4/xfce4-panel \
		sysutils/upower \
		devel/libnotify

# share/polkit-1/actions/org.xfce.power.policy
RUN_DEPENDS +=	sysutils/polkit

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=	sysutils/consolekit

#CONFIGURE_ARGS = --enable-debug
CONFIGURE_ENV +=ac_cv_lib_Xext_DPMSQueryExtension=yes
FAKE_FLAGS =	autostartdir=${PREFIX}/share/examples/xfce4-power-manager

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB += expat ffi fontconfig freetype
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 harfbuzz m notify
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread startup-notification-1 xcb
WANTLIB += xcb-util xcb-render xcb-shm xfce4panel-2.0 xfce4ui-2
WANTLIB += xfce4util xfconf-0 z upower-glib iconv intl
WANTLIB += atk-bridge-2.0 cairo-gobject epoxy gdk-3 gtk-3 fribidi

.include <bsd.port.mk>
