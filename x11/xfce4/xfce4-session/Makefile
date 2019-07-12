# $OpenBSD: Makefile,v 1.78 2019/07/12 20:51:28 sthen Exp $

COMMENT=	Xfce4 session manager

XFCE_PROJECT=	xfce4-session
XFCE_VERSION=	4.12.1
REVISION=	7

PORTROACH=	limitw:1,even

SHARED_LIBS +=	xfsm-4.6	1.0 # .0.0

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 X11-xcb XRes Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1
WANTLIB += dbus-glib-1 expat ffi fontconfig freetype fribidi gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz iconv intl m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += polkit-gobject-1 pthread startup-notification-1 upower-glib
WANTLIB += wnck-1 xcb xcb-render xcb-shm xcb-util xfce4ui-1 xfce4util
WANTLIB += xfconf-0 z

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes
MODXFCE_PURGE_LA =	lib/xfce4/session/splash-engines

CONFIGURE_ENV=  ac_cv_header_sys_user_h=yes
CONFIGURE_ARGS=	--disable-linker-opts \
		--disable-systemd \
		--with-xsession-prefix=${PREFIX}
#CONFIGURE_ARGS+= --enable-session-screenshots
#XXX session-screenshots broken?
# http://bugzilla.xfce.org/show_bug.cgi?id=6885
LIB_DEPENDS=	x11/xfce4/libxfce4ui>=4.12.1 \
		x11/xfce4/xfconf>=4.9.0 \
		sysutils/upower \
		sysutils/polkit \
		devel/libwnck


FAKE_FLAGS=	settingsdir=${PREFIX}/share/examples/xfce4-session \
		conffilesdir=${PREFIX}/share/examples/xfce4-session \
		autostartdir=${PREFIX}/share/examples/xfce4-session

post-install:
	${SUBST_CMD} ${PREFIX}/bin/xflock4
	rm -f ${PREFIX}/bin/*.beforesubst

.include <bsd.port.mk>
