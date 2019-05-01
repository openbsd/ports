# $OpenBSD: Makefile,v 1.19 2019/05/01 10:07:53 ajacoutot Exp $

COMMENT=	Xfce4 pulseaudio control line panel plugin

XFCE_VERSION=	0.4.1
XFCE_PLUGIN=	pulseaudio
REVISION=	0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODXFCE_WANTLIB =	xfce4panel-2.0
WANTLIB += FLAC ICE SM X11 X11-xcb XRes Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xtst atk-1.0
WANTLIB += atk-bridge-2.0 cairo cairo-gobject dbus-1 dbus-glib-1
WANTLIB += epoxy execinfo expat ffi fontconfig freetype fribidi
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz iconv intl m notify
WANTLIB += ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png16 pthread pulse pulse-mainloop-glib sndfile startup-notification-1
WANTLIB += vorbis vorbisenc wnck-3 xcb xcb-render xcb-shm xcb-util
WANTLIB += xfce4ui-2 xfce4util xfconf-0 z

MODULES=	x11/xfce4

LIB_DEPENDS+=	audio/pulseaudio \
		devel/libnotify \
		devel/libwnck3 \
		devel/startup-notification

.include <bsd.port.mk>
