# $OpenBSD: Makefile,v 1.50 2019/07/12 20:51:27 sthen Exp $

COMMENT=	Xfce4 volume mixer

XFCE_GOODIE=	xfce4-mixer
XFCE_VERSION=	4.11.0
REVISION=	7
HOMEPAGE=	https://www.xfce.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 dbus-glib-1
WANTLIB += expat ffi fontconfig freetype fribidi gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gstaudio-0.10 gstbase-0.10 gstinterfaces-0.10
WANTLIB += gstpbutils-0.10 gstreamer-0.10 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz iconv intl lzma m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread startup-notification-1
WANTLIB += unique-1.0 xcb xcb-render xcb-shm xcb-util xfce4panel-1.0
WANTLIB += xfce4ui-1 xfce4util xfconf-0 xml2 z

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

.include <bsd.port.mk>
