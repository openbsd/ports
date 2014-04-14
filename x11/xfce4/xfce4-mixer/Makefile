# $OpenBSD: Makefile,v 1.39 2014/04/14 19:52:45 matthieu Exp $

COMMENT=	Xfce4 volume mixer

XFCE_GOODIE=	xfce4-mixer
XFCE_VERSION=	4.10.0
HOMEPAGE=	http://www.xfce.org/projects/xfce4-mixer
REVISION=	1

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_PURGE_LA =	lib/xfce4/panel/plugins

LIB_DEPENDS=	devel/libunique \
		multimedia/gstreamer-0.10/core \
		multimedia/gstreamer-0.10/plugins-base \
		x11/xfce4/xfce4-panel

# needed for libgstossaudio..
RUN_DEPENDS=	multimedia/gstreamer-0.10/plugins-good
CONFIGURE_ARGS+=	--disable-linker-opts
CONFIGURE_ARGS+=	--disable-keybinder

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 c cairo dbus-1 dbus-glib-1 drm expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gstaudio-0.10 gstbase-0.10
WANTLIB += gstinterfaces-0.10 gstreamer-0.10 gthread-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs startup-notification-1 xcb
WANTLIB += xcb-util xcb-render xcb-shm xfce4panel-1.0 xfce4ui-1
WANTLIB += xfce4util xfconf-0 xml2 z gstpbutils-0.10 stdc++ unique-1.0
WANTLIB += harfbuzz

.include <bsd.port.mk>
