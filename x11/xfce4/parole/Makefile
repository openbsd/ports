COMMENT =	Xfce4 media player

XFCE_GOODIE =	parole

CATEGORIES +=	audio

# GPLv2
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc base-gcc

MODULES =	x11/xfce4 devel/meson
MODXFCE_DESKTOP_FILE =	Yes
MODXFCE_ICON_CACHE=	Yes

LIB_DEPENDS =	multimedia/gstreamer1/core \
		multimedia/gstreamer1/plugins-base \
		x11/dbus-glib \
		x11/xfce4/libxfce4ui \
		audio/taglib \
		devel/libnotify

WANTLIB += X11 c cairo dbus-1 dbus-glib-1 gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gstaudio-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += gtk-3 intl notify tag_c xfce4ui-2 xfce4util xfconf-0

# gst-libav needed to play videos and mp3
RUN_DEPENDS +=	multimedia/gstreamer1/plugins-good \
		multimedia/gstreamer1/libav

.include <bsd.port.mk>
