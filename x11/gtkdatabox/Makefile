# $OpenBSD: Makefile,v 1.1.1.1 2009/10/02 13:35:08 pea Exp $

COMMENT =	a GTK+2 widget to display large amounts of numerical data

DISTNAME =	gtkdatabox-0.9.1.1

SHARED_LIBS =	gtkdatabox 0.0

CATEGORIES =	x11

HOMEPAGE =	http://www.eudoxos.de/gtk/gtkdatabox/

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB = 	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender expat fontconfig freetype \
		m pixman-1 z gio-2.0 atk-1.0 cairo glib-2.0 glitz \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 gmodule-2.0 \
		gobject-2.0 png pthread-stubs xcb pcre

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gtkdatabox/}

MODULES =	devel/gettext

LIB_DEPENDS =	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

USE_X11 =	Yes

USE_LIBTOOL = 	Yes

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
