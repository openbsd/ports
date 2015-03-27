# $OpenBSD: Makefile,v 1.16 2015/03/27 08:16:23 ajacoutot Exp $

COMMENT =	touch typing tutor program

DISTNAME =	klavaro-1.5.0
REVISION =	5

CATEGORIES =	x11

HOMEPAGE =	http://klavaro.sourceforge.net/

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

USE_BZIP2 = 	Yes

WANTLIB = 	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender c expat fontconfig freetype \
		m pixman-1 z gio-2.0 atk-1.0 cairo glib-2.0 curl \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 gmodule-2.0 png \
		gobject-2.0 pthread-stubs xcb gthread-2.0 pthread \
		xcb-render xcb-render-util gdk-x11-2.0 gdk_pixbuf-2.0 \
		gtk-x11-2.0 gtkdatabox curl

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=klavaro/}

EXTRACT_SUFX = 	.tar.bz2

MODULES =       devel/gettext

RUN_DEPENDS =	x11/gtk+3,-guic

LIB_DEPENDS = 	x11/gtk+2 \
		x11/gtkdatabox \
		net/curl

CONFIGURE_STYLE=gnu
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
                LDFLAGS="-L${LOCALBASE}/lib" \

.include <bsd.port.mk>
