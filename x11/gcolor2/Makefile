# $OpenBSD: Makefile,v 1.9 2015/08/17 19:52:39 sthen Exp $
#
COMMENT =		color selector in GTK2

DISTNAME =		gcolor2-0.4
REVISION =		4
CATEGORIES =		x11

HOMEPAGE =		http://gcolor2.sourceforge.net/

MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs xcb xcb-render xcb-shm
WANTLIB += z

LIB_DEPENDS = x11/gtk+2

MODULES =		devel/gettext \
			textproc/intltool
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=gcolor2/}

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
