# $OpenBSD: Makefile,v 1.1.1.1 2010/01/09 15:21:25 landry Exp $

COMMENT =	Xfce4 media player

XFCE_VERSION =	0.2.0
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
			--disable-power-manager-plugin \
			--disable-browser-plugin

#for the day i manage to build and run the browser plugin..
#CONFIGURE_ENV =	BROWSER_PLUGIN_DIR=${PREFIX}/lib/mozilla-plugins
#BUILD_DEPENDS+=	:xulrunner-devel->=1.9:devel/xulrunner/1.9,-devel
#LIB_DEPENDS =	xulrunner1.9/xul,xulrunner1.9/xpcom::devel/xulrunner/1.9,-main
#remove a file shipped by xulrunner-devel
#post-extract:
#	rm ${WRKSRC}/browser-plugin/npupp.h

LIB_DEPENDS =	gstreamer-0.10,gstbase-0.10::multimedia/gstreamer-0.10/core \
		gstvideo-0.10,gstinterfaces-0.10::multimedia/gstreamer-0.10/plugins-base \
		xfcegui4::x11/xfce4/libxfcegui4 \
		tag,tag_c::audio/taglib \
		notify::devel/libnotify

# plugins-ffmpeg needed to play mpeg vidz
# plugins-bad for dvd play
RUN_DEPENDS +=	:gstreamer-plugins-good-*:multimedia/gstreamer-0.10/plugins-good \
		:gstreamer-plugins-bad-*:multimedia/gstreamer-0.10/plugins-bad \
		:gstreamer-ffmpeg-*:multimedia/gstreamer-0.10/plugins-ffmpeg

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1
WANTLIB += dbus-glib-1 execinfo expat fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += startup-notification-1 stdc++ xcb xcb-atom xcb-aux
WANTLIB += xcb-event xfce4util xml2 z

.include <bsd.port.mk>
