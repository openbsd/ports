# $OpenBSD: Makefile,v 1.3 2011/09/19 07:53:15 ajacoutot Exp $

COMMENT =	Xfce4 power manager

XFCE_VERSION =	1.0.10
XFCE_GOODIE =	xfce4-power-manager

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES =	x11/xfce4
MODXFCE_DESKTOP_FILE =	Yes

LIB_DEPENDS =	x11/xfce4/xfce4-panel \
		devel/libnotify

RUN_DEPENDS =	sysutils/upower

CONFIGURE_ENV +=ac_cv_lib_Xext_DPMSQueryExtension=yes
FAKE_FLAGS =	autostartdir=${PREFIX}/share/examples/xfce4-power-manager

WANTLIB =	ICE SM X11 Xdmcp Xrender Xdamage Xau fontconfig freetype \
		Xcursor Xext Xfixes Xi Xinerama Xcomposite Xrandr expat \
		atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 m z c \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 pcre xfce4panel-1.0 \
		pangoft2-1.0 pangocairo-1.0 cairo png pthread \
		startup-notification-1 xfce4util pixman-1 gthread-2.0 \
		pthread-stubs xcb execinfo xcb-atom xcb-aux xcb-event \
		notify dbus-1 dbus-glib-1 xfce4ui-1 xfconf-0 \
		xcb-render  GL Xxf86vm drm xcb-shm

.include <bsd.port.mk>
