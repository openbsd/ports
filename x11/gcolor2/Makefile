# $OpenBSD: Makefile,v 1.13 2019/07/12 20:51:11 sthen Exp $
#
COMMENT =		color selector in GTK2

DISTNAME =		gcolor2-0.4
REVISION =		7
CATEGORIES =		x11

HOMEPAGE =		http://gcolor2.sourceforge.net/

MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo expat ffi fontconfig freetype fribidi
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz iconv
WANTLIB += intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread xcb xcb-render xcb-shm z

LIB_DEPENDS = x11/gtk+2

MODULES =		textproc/intltool
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=gcolor2/}

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
