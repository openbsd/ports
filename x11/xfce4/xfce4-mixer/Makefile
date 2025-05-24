COMMENT=	Xfce4 volume mixer

XFCE_GOODIE=	xfce4-mixer
REVISION=	0

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4 devel/meson
MODXFCE_DESKTOP_FILE=	Yes


LIB_DEPENDS=	multimedia/gstreamer1/core \
		x11/xfce4/xfce4-panel

WANTLIB += c cairo gdk-3 gio-2.0 glib-2.0 gobject-2.0 gstreamer-1.0
WANTLIB += gtk-3 m sndio xfce4panel-2.0 xfce4ui-2 xfce4util xfconf-0

CONFIGURE_ARGS=	-Dkeybinder=disabled \
		-Dpulse=disabled \
		-Dalsa=disabled \
		-Doss=disabled

.include <bsd.port.mk>
