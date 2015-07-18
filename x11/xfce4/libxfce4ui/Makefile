# $OpenBSD: Makefile,v 1.22 2015/07/18 23:55:43 jasper Exp $

COMMENT=	Xfce4 widget library

XFCE_VERSION=	4.12.1
XFCE_PROJECT=	libxfce4ui
REVISION=	2

SHARED_LIBS=	xfce4ui-1		0.1	\
		xfce4ui-2		0.0	\
		xfce4kbd-private-2	1.0	\
		xfce4kbd-private-3	0.0	# 0.0

HOMEPAGE=	http://www.xfce.org/projects/libraries

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi c cairo
WANTLIB += cairo-gobject dbus-1 dbus-glib-1 epoxy expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += gtk-x11-2.0 harfbuzz m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs
WANTLIB += startup-notification-1 xcb xcb-render xcb-shm xcb-util
WANTLIB += xfce4util xfconf-0 z

MODULES=	x11/xfce4

MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes
CONFIGURE_ARGS +=	--disable-gladeui

LIB_DEPENDS=	x11/xfce4/xfconf>=4.12.0 \
		x11/gtk+2 \
		x11/gtk+3 \
		devel/startup-notification

FAKE_FLAGS=	settingsdir=${PREFIX}/share/examples/xfconf

post-install:
	sed -i 's/Control/Primary/' ${PREFIX}/share/examples/xfconf/xfce4-keyboard-shortcuts.xml

.include <bsd.port.mk>
