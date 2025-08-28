COMMENT=	Xfce4 gnome-shell like dashboard

XFCE_GOODIE =	xfdashboard
XFCE_VERSION =	1.1.0
SHARED_LIBS +=	xfdashboard	1.0 # 900.0

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4 devel/meson
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes

LIB_DEPENDS =	graphics/clutter/core \
		x11/xfce4/xfconf \
		x11/xfce4/garcon \
		x11/xfce4/libxfce4ui \
		x11/gtk+3 \
		devel/libwnck3

WANTLIB += X11 Xcomposite Xdamage Xinerama c cairo clutter-1.0
WANTLIB += cogl garcon-1 gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gtk-3 m pango-1.0 wnck-3 xfce4ui-2
WANTLIB += xfce4util xfconf-0

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xfdashboard
	mv ${WRKINST}/etc/xdg/autostart/org.xfce.xfdashboard-autostart.desktop \
		${PREFIX}/share/examples/xfdashboard/
	rmdir ${WRKINST}/etc/xdg/{autostart,}


.include <bsd.port.mk>
