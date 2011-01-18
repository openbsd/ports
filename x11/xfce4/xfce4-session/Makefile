# $OpenBSD: Makefile,v 1.45 2011/01/18 20:36:51 landry Exp $

COMMENT=	Xfce4 session manager

XFCE_PROJECT=	xfce4-session

SHARED_LIBS +=	xfsm-4.6	0.0 # .0.0

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES=	Yes

CONFIGURE_ARGS=	--disable-linker-opts \
		--disable-hal \
		--disable-polkit \
		--disable-consolekit \
		--disable-upower
#CONFIGURE_ARGS+= --enable-session-screenshots
#XXX session-screenshots broken?
# http://bugzilla.xfce.org/show_bug.cgi?id=6885
LIB_DEPENDS=	x11/xfce4/libxfce4ui>=4.8.0\
		x11/xfce4/xfce4-panel>=4.8.0 \
		x11/xfce4/xfconf>=4.8.0 \
		devel/libwnck

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender XRes atk-1.0 c cairo dbus-1 \
		dbus-glib-1 expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre \
		pixman-1 png pthread startup-notification-1 xfce4util z \
		pthread-stubs xcb execinfo xcb-atom xcb-aux xcb-event \
		gthread-2.0 xcb-render wnck-1 xfconf-0 GL Xxf86vm drm \
		xcb-shm xfce4panel-1.0 xfce4ui-1

FAKE_FLAGS=	settingsdir=${PREFIX}/share/examples/xfce4-session

.include <bsd.port.mk>
