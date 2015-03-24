# $OpenBSD: Makefile,v 1.1.1.1 2015/03/24 21:05:02 landry Exp $

COMMENT=	Xfce4 pulseaudio control line panel plugin

XFCE_VERSION=	0.2.1
XFCE_PLUGIN=	pulseaudio

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4

LIB_DEPENDS+=	audio/pulseaudio

WANTLIB += Xtst atk-bridge-2.0 atspi cairo-gobject gdbm gdk-3
WANTLIB += gtk-3 xfce4panel-2.0 xfce4ui-2 xfconf-0
WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 cairo dbus-1 dbus-glib-1 expat
WANTLIB += ffi fontconfig freetype gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs startup-notification-1
WANTLIB += xcb xcb-util xcb-render xcb-shm xfce4util z
WANTLIB += harfbuzz graphite2
WANTLIB += FLAC execinfo json-c ogg pulse pulse-mainloop-glib
WANTLIB += sndfile vorbis vorbisenc

.include <bsd.port.mk>
