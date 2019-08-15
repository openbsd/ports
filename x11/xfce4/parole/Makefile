# $OpenBSD: Makefile,v 1.52 2019/08/15 06:54:53 landry Exp $

COMMENT =	Xfce4 media player

XFCE_VERSION =	1.0.4
XFCE_GOODIE =	parole
CATEGORIES +=	audio

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 c cairo
WANTLIB += cairo-gobject dbus-1 dbus-glib-1 epoxy expat ffi fontconfig
WANTLIB += freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gstaudio-1.0 gstbase-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += harfbuzz m notify orc-0.4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += startup-notification-1 ${COMPILER_LIBCXX} tag tag_c xcb xcb-render
WANTLIB += xcb-shm xcb-util xfce4ui-2 xfce4util xfconf-0 z iconv intl

COMPILER =		base-clang ports-gcc base-gcc

MODULES =	x11/xfce4
MODXFCE_DESKTOP_FILE =	Yes
MODXFCE_ICON_CACHE=	Yes
MODXFCE_PURGE_LA =	lib/parole-0

LIB_DEPENDS =	multimedia/gstreamer1/core \
		multimedia/gstreamer1/plugins-base \
		x11/dbus-glib \
		x11/xfce4/libxfce4ui \
		audio/taglib \
		devel/libnotify

# plugins-libav needed to play vids and mp3
RUN_DEPENDS +=	multimedia/gstreamer1/plugins-good \
		multimedia/gstreamer1/plugins-libav

.include <bsd.port.mk>
