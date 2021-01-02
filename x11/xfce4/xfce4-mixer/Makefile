# $OpenBSD: Makefile,v 1.55 2021/01/02 10:45:24 landry Exp $

COMMENT=	Xfce4 volume mixer

XFCE_GOODIE=	xfce4-mixer
XFCE_VERSION=	4.11.0pl4
XFCE_COMMIT=	21eb6f543ef6e2d99f4192a63d3f53eb1ca704a0
MASTER_SITES_GIT=https://gitlab.xfce.org/landry/${XFCE_GOODIE:L}/-/archive/${XFCE_COMMIT}/

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_PURGE_LA =	lib/xfce4/panel/plugins

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 X11-xcb Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += atk-bridge-2.0 c cairo cairo-gobject dbus-1 dbus-glib-1
WANTLIB += epoxy expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gstreamer-1.0 sndio gthread-2.0 gtk-3 harfbuzz iconv intl
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png startup-notification-1 xcb xcb-render xcb-shm xcb-util
WANTLIB += xfce4panel-2.0 xfce4ui-2 xfce4util xfconf-0 z

LIB_DEPENDS=	multimedia/gstreamer1/core \
		x11/dbus-glib \
		x11/xfce4/xfce4-panel

CONFIGURE_ARGS+=	--disable-linker-opts
CONFIGURE_ARGS+=	--disable-keybinder
CONFIGURE_ARGS+=	--disable-pulse

.include <bsd.port.mk>
