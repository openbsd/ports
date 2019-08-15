# $OpenBSD: Makefile,v 1.28 2019/08/15 06:56:06 landry Exp $

COMMENT =	Thunar archive plugin

XFCE_VERSION =	0.4.0
THUNAR_PLUGIN =	thunar-archive-plugin

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =	x11/xfce4

MODXFCE_ICON_CACHE=	Yes
MODXFCE_PURGE_LA =	lib/thunarx-3

LIB_DEPENDS =	x11/xfce4/thunar>=1.7.0

RUN_DEPENDS =	xarchiver-*|file-roller-*|kdeutils-*:x11/xarchiver

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 cairo exo-2 expat ffi
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-3 harfbuzz m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += thunarx-3 xcb xcb-render xcb-shm xfce4util
WANTLIB += atk-bridge-2.0 cairo-gobject epoxy fribidi
WANTLIB += z iconv intl

.include <bsd.port.mk>
