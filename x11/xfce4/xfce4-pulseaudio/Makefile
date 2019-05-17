# $OpenBSD: Makefile,v 1.20 2019/05/17 16:45:29 sthen Exp $

COMMENT=	Xfce4 pulseaudio control line panel plugin

XFCE_VERSION=	0.4.1
XFCE_PLUGIN=	pulseaudio
REVISION=	1

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += FLAC ICE SM X11 X11-xcb XRes Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xtst atk-1.0 atk-bridge-2.0
WANTLIB += cairo cairo-gobject dbus-1 dbus-glib-1 epoxy execinfo expat
WANTLIB += ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += harfbuzz iconv intl m notify ogg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pulse
WANTLIB += pulse-mainloop-glib sndfile startup-notification-1 vorbis
WANTLIB += vorbisenc wnck-3 xcb xcb-render xcb-shm xcb-util xfce4ui-2
WANTLIB += xfce4util xfconf-0 z

MODXFCE_WANTLIB =	xfce4panel-2.0

MODULES=	x11/xfce4

LIB_DEPENDS+=	audio/pulseaudio \
		devel/libnotify \
		devel/libwnck3 \
		devel/startup-notification

.include <bsd.port.mk>
