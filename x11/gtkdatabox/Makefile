# $OpenBSD: Makefile,v 1.13 2017/10/23 17:11:05 sthen Exp $

COMMENT =	GTK+2 widget to display large amounts of numerical data

DISTNAME =	gtkdatabox-0.9.1.1
REVISION =	7

SHARED_LIBS =	gtkdatabox 0.0

CATEGORIES =	x11

HOMEPAGE =	http://www.eudoxos.de/gtk/gtkdatabox/

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = 	X11 Xcomposite Xcursor Xdamage Xext Xfixes \
		Xi Xinerama Xrandr Xrender expat fontconfig freetype \
		m pixman-1 z gio-2.0 atk-1.0 cairo glib-2.0 \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 gmodule-2.0 \
		gobject-2.0 png xcb pcre gthread-2.0 \
		xcb-render gdk-x11-2.0 gdk_pixbuf-2.0 \
		gtk-x11-2.0 ffi graphite2 harfbuzz pthread xcb-shm

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gtkdatabox/}

MODULES =	devel/gettext

LIB_DEPENDS =	x11/gtk+2



CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
