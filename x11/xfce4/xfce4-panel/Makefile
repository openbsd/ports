# $OpenBSD: Makefile,v 1.48 2012/04/30 12:52:37 landry Exp $

COMMENT=	Xfce4 desktop panel

XFCE_PROJECT=	xfce4-panel
SHARED_LIBS=	xfce4panel-1.0	1.0	# 4.0

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes

CONFIGURE_ARGS=--disable-linker-opts
LIB_DEPENDS=	x11/xfce4/exo>=0.7.2 \
		x11/xfce4/libxfce4ui>=4.9.0 \
		x11/xfce4/xfconf>=4.9.0 \
		x11/xfce4/garcon>=0.1.5 \
		devel/libwnck

WANTLIB += GL ICE SM X11 X11-xcb XRes Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 c cairo dbus-1 dbus-glib-1 drm exo-1 expat
WANTLIB += ffi fontconfig freetype garcon-1 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs startup-notification-1
WANTLIB += wnck-1 xcb xcb-aux xcb-render xcb-shm xfce4ui-1 xfce4util
WANTLIB += xfconf-0 z stdc++

FAKE_FLAGS=	confdir=${PREFIX}/share/examples/xfce4-panel

.include <bsd.port.mk>
