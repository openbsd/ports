# $OpenBSD: Makefile,v 1.30 2015/03/27 08:16:24 ajacoutot Exp $

COMMENT =	Xfce4 media player

XFCE_VERSION =	0.8.0
XFCE_GOODIE =	parole
CATEGORIES +=	audio
REVISION=	0

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	x11/xfce4
MODXFCE_DESKTOP_FILE =	Yes
MODXFCE_ICON_CACHE=	Yes
MODXFCE_PURGE_LA =	lib/parole-0

LIB_DEPENDS =	multimedia/gstreamer1/core \
		multimedia/gstreamer1/plugins-base \
		x11/xfce4/libxfce4ui \
		audio/taglib \
		devel/libnotify

# plugins-ffmpeg needed to play mpeg vidz
# plugins-ugly needed to play mp3
RUN_DEPENDS +=	multimedia/gstreamer1/plugins-good \
		multimedia/gstreamer1/plugins-ugly

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1
WANTLIB += dbus-glib-1 expat fontconfig freetype
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += startup-notification-1 stdc++ xcb xcb-util
WANTLIB += xfce4util z notify tag tag_c xfce4ui-2
WANTLIB += atk-bridge-2.0 atspi cairo-gobject gdk-3 gstaudio-1.0
WANTLIB += gstbase-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gtk-3 xfconf-0
WANTLIB += xcb-render xcb-shm X11-xcb ffi graphite2
WANTLIB += harfbuzz orc-0.4

.include <bsd.port.mk>
