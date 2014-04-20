# $OpenBSD: Makefile,v 1.17 2014/04/20 21:19:44 jasper Exp $

COMMENT=	Xfce4 widget library

XFCE_VERSION =	4.10.0
XFCE_PROJECT=	libxfce4ui
REVISION =	6

SHARED_LIBS=	xfce4ui-1		0.1	\
		xfce4kbd-private-2	1.0	# 0.0

HOMEPAGE=	http://www.xfce.org/projects/libraries

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4

MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes
CONFIGURE_ARGS +=	--disable-gladeui

LIB_DEPENDS=	x11/xfce4/xfconf>=4.8.0 \
		x11/gtk+2 \
		devel/startup-notification

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB +=  Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 cairo dbus-1 dbus-glib-1 expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs
WANTLIB += startup-notification-1 xcb xcb-util xcb-render xcb-shm
WANTLIB += xfce4util xfconf-0 z c pthread harfbuzz graphite2

FAKE_FLAGS=	settingsdir=${PREFIX}/share/examples/xfconf

post-install:
	perl -pi -e 's/Control/Primary/' ${PREFIX}/share/examples/xfconf/xfce4-keyboard-shortcuts.xml

.include <bsd.port.mk>
