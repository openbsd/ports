# $OpenBSD: Makefile,v 1.38 2011/03/24 17:58:30 stsp Exp $

COMMENT=	Xfce4 desktop panel

XFCE_PROJECT=	xfce4-panel
XFCE_VERSION=	4.8.2
REVISION=	0
SHARED_LIBS=	xfce4panel-1.0	0.0	# 3.0

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES=	Yes

CONFIGURE_ARGS=--disable-linker-opts
LIB_DEPENDS=	x11/xfce4/exo>=0.6.0 \
		x11/xfce4/libxfce4ui>=4.8.0 \
		x11/xfce4/xfconf>=4.8.0 \
		x11/xfce4/garcon>=0.1.5 \
		devel/libwnck

WANTLIB =	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender XRes atk-1.0 c cairo expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png \
		startup-notification-1 xfce4util z pthread-stubs xcb \
		execinfo xcb-atom xcb-aux xcb-event gthread-2.0 pthread \
		xcb-render exo-1 wnck-1 GL Xxf86vm dbus-1 dbus-glib-1 \
		drm garcon-1 xcb-shm xfce4ui-1 xfconf-0

FAKE_FLAGS=	confdir=${PREFIX}/share/examples/xfce4-panel

.include <bsd.port.mk>
