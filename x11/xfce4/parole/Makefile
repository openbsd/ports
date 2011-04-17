# $OpenBSD: Makefile,v 1.7 2011/04/17 10:36:50 landry Exp $

COMMENT =	Xfce4 media player

XFCE_VERSION =	0.2.0.5
XFCE_GOODIE =	parole
CATEGORIES +=	audio

# GPLv2
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes

MODULES =	x11/xfce4
DESKTOP_FILES =	Yes

CONFIGURE_ARGS =	--disable-silent-rules \
			--disable-power-manager-plugin

LIB_DEPENDS =	multimedia/gstreamer-0.10/core \
		multimedia/gstreamer-0.10/plugins-base \
		x11/xfce4/libxfcegui4 \
		audio/taglib \
		devel/libnotify

# plugins-ffmpeg needed to play mpeg vidz
# plugins-bad for dvd play
RUN_DEPENDS +=	multimedia/gstreamer-0.10/plugins-good \
		multimedia/gstreamer-0.10/plugins-bad \
		multimedia/gstreamer-0.10/plugins-ffmpeg

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1
WANTLIB += dbus-glib-1 execinfo expat fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += startup-notification-1 stdc++ xcb xcb-atom xcb-aux
WANTLIB += xcb-event xfce4util xml2 z notify tag tag_c xfcegui4
WANTLIB += gstvideo-0.10 gstinterfaces-0.10 gstreamer-0.10 gstbase-0.10
WANTLIB += xcb-render GL Xxf86vm drm xcb-shm

.include <bsd.port.mk>
