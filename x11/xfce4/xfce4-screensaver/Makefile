# $OpenBSD: Makefile,v 1.6 2019/11/11 20:49:28 landry Exp $

COMMENT =	Xfce4 screensaver

XFCE_VERSION =	0.1.8
XFCE_GOODIE =	xfce4-screensaver
REVISION =	0
DEBUG_PACKAGES =${BUILD_PACKAGES}

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =	x11/xfce4

MODXFCE_DESKTOP_FILE =	Yes

LIB_DEPENDS =	x11/xfce4/garcon>=0.5.0 \
		x11/xfce4/xfconf \
		x11/dbus-glib \
		devel/libwnck3 \
		x11/gnome/libxklavier

WANTLIB += GL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender XRes Xss Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 c cairo cairo-gobject dbus-1 drm
WANTLIB += epoxy expat ffi fontconfig freetype fribidi garcon-1
WANTLIB += garcon-gtk3-1 gdk-3 gdk_pixbuf-2.0 gio-2.0 glapi glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += iconv intl lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread startup-notification-1 xcb
WANTLIB += xcb-dri2 xcb-dri3 xcb-glx xcb-present xcb-render xcb-shm
WANTLIB += xcb-sync xcb-util xcb-xfixes xfce4ui-2 xfce4util xfconf-0
WANTLIB += xkbfile xklavier xml2 xshmfence z harfbuzz dbus-glib-1 wnck-3

FAKE_FLAGS =	menudir=${PREFIX}/share/examples/xfce4-screensaver/xdg/menus

post-install:
	@mv ${WRKINST}/etc/xdg/autostart \
		${PREFIX}/share/examples/xfce4-screensaver/xdg/autostart
	rm -Rf ${WRKINST}/etc/xdg

.include <bsd.port.mk>
