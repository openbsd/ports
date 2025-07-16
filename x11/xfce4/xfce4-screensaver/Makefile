COMMENT =	Xfce4 screensaver

XFCE_GOODIE =	xfce4-screensaver
REVISION =	0

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =	x11/xfce4 \
		devel/meson \
		lang/python

MODXFCE_DESKTOP_FILE =	Yes
MODXFCE_ICON_CACHE =	Yes
MODPY_ADJ_FILES =	src/xfce4-screensaver-configure.py

LIB_DEPENDS =	x11/xfce4/garcon>=0.5.0 \
		x11/xfce4/xfconf \
		x11/dbus-glib \
		devel/libwnck3 \
		x11/gnome/libxklavier

WANTLIB += X11 Xext Xss c cairo dbus-1 dbus-glib-1 garcon-1 gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3 m
WANTLIB += pango-1.0 wnck-3 xfce4ui-2 xfce4util xfconf-0 xklavier

CONFIGURE_ARGS += -Dauthentication-scheme=helper \
		-Dsession-manager=consolekit \
		-Ddocs=disabled \
		-Dpasswd-helper=${LOCALBASE}/libexec/xfce4-screensaver-ask-pass

post-build:
	${CC} ${CFLAGS} ${FILESDIR}/ask-pass.c -o ${WRKBUILD}/ask-pass

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ask-pass ${PREFIX}/libexec/xfce4-screensaver-ask-pass
	mkdir ${PREFIX}/share/examples/xfce4-screensaver/
	mv ${WRKINST}/etc/xdg \
		${PREFIX}/share/examples/xfce4-screensaver/

.include <bsd.port.mk>
