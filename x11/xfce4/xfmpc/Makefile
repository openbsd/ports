COMMENT=	Xfce4 Music Player Daemon client

XFCE_VERSION=	0.4.0
XFCE_GOODIE=	xfmpc

# GPLv2
PERMIT_PACKAGE=	Yes


MODXFCE_DESKTOP_FILE=	Yes
MODULES=	x11/xfce4 devel/meson

LIB_DEPENDS=	audio/libmpd \
		x11/xfce4/libxfce4ui

WANTLIB += c gdk-3 gdk_pixbuf-2.0 glib-2.0 gobject-2.0 gtk-3 mpd
WANTLIB += pango-1.0 xfce4ui-2 xfce4util

.include <bsd.port.mk>
