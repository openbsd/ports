# $OpenBSD: Makefile,v 1.27 2019/07/12 20:51:27 sthen Exp $

COMMENT =	Thunar archive plugin

XFCE_VERSION =	0.3.1
THUNAR_PLUGIN =	thunar-archive-plugin
REVISION =	6

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo exo-1 expat ffi fontconfig
WANTLIB += freetype fribidi gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread thunarx-2 xcb xcb-render xcb-shm
WANTLIB += xfce4util z

MODULES =	x11/xfce4

MODXFCE_ICON_CACHE=	Yes

LIB_DEPENDS =	x11/xfce4/thunar

RUN_DEPENDS =	xarchiver-*|file-roller-*|kdeutils-*:x11/xarchiver


.include <bsd.port.mk>
