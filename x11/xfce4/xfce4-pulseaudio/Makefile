COMMENT=	Xfce4 pulseaudio control line panel plugin

XFCE_VERSION=	0.5.1
XFCE_PLUGIN=	pulseaudio

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4 devel/meson

MODXFCE_ICON_CACHE =	Yes

LIB_DEPENDS+=	x11/xfce4/exo \
		x11/keybinder3 \
		audio/libcanberra \
		audio/pulseaudio \
		devel/libnotify \
		devel/startup-notification

WANTLIB += cairo canberra exo-2 gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 keybinder-3.0 m notify pulse pulse-mainloop-glib
WANTLIB += xfce4ui-2 xfce4util xfce4windowing-0 xfconf-0

.include <bsd.port.mk>
