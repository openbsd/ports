COMMENT=	Xfce4 desktop screenshot panel plugin

XFCE_VERSION=	1.11.3
XFCE_GOODIE=	xfce4-screenshooter

PORTROACH=	limitw:1,even

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4 devel/meson

LIB_DEPENDS=	x11/xfce4/xfce4-panel
BUILD_DEPENDS=	wayland/wayland \
		wayland/wayland-protocols \
		devel/help2man
# if help2man isnt found the shipped manpage isnt installed ?

WANTLIB += X11 Xext Xfixes c cairo gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gobject-2.0 gtk-3 gtk-layer-shell pango-1.0
WANTLIB += pangocairo-1.0 wayland-client xfce4ui-2 xfce4util xfconf-0

MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes
MODXFCE_WANTLIB =	xfce4panel-2.0

.include <bsd.port.mk>
