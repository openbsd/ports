COMMENT=	Xfce4 pulseaudio control line panel plugin

XFCE_VERSION=	0.4.9
XFCE_PLUGIN=	pulseaudio
REVISION=	0

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4

MODXFCE_ICON_CACHE =	Yes

LIB_DEPENDS+=	x11/xfce4/exo \
		audio/libcanberra \
		audio/pulseaudio \
		devel/libnotify \
		devel/startup-notification

WANTLIB += FLAC ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += atspi cairo cairo-gobject dbus-1 epoxy execinfo exo-2 expat
WANTLIB += ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += harfbuzz iconv intl m notify ogg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre2-8 pixman-1 png pthread pulse
WANTLIB += pulse-mainloop-glib sndfile startup-notification-1 vorbis
WANTLIB += vorbisenc wnck-3 xcb xcb-render xcb-shm xcb-util xfce4ui-2
WANTLIB += xfce4util xfconf-0 z Xau Xdmcp jpeg opus mp3lame mpg123
WANTLIB += display-info epoll-shim wayland-client wayland-cursor
WANTLIB += wayland-egl xfce4windowing-0 xkbcommon gtk-layer-shell
WANTLIB += canberra ltdl vorbisfile ${COMPILER_LIBCXX}

.include <bsd.port.mk>
