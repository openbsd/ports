# $OpenBSD: Makefile,v 1.71 2016/11/03 16:20:41 landry Exp $

COMMENT=	Xfce4 session manager

XFCE_PROJECT=	xfce4-session
XFCE_VERSION=	4.12.1
REVISION=	2

SHARED_LIBS +=	xfsm-4.6	1.0 # .0.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

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

WANTLIB += ICE SM X11 X11-xcb XRes Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 c cairo dbus-1 dbus-glib-1 expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs startup-notification-1 wnck-1 xcb xcb-util
WANTLIB += xcb-render xcb-shm xfce4ui-1 xfce4util xfconf-0 z
WANTLIB += harfbuzz graphite2 upower-glib polkit-gobject-1 iconv intl

FAKE_FLAGS=	settingsdir=${PREFIX}/share/examples/xfce4-session \
		conffilesdir=${PREFIX}/share/examples/xfce4-session \
		autostartdir=${PREFIX}/share/examples/xfce4-session

post-install:
	${SUBST_CMD} ${PREFIX}/bin/xflock4
	rm -f ${PREFIX}/bin/*.beforesubst

.include <bsd.port.mk>
