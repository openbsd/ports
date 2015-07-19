# $OpenBSD: Makefile,v 1.1.1.1 2015/07/19 03:13:14 czarkoff Exp $

COMMENT =	simple webbrowser based on webkit/gtk+

DISTNAME =	surf2-0.6.20150714
CATEGORIES =	www
HOMEPAGE =	http://surf.suckless.org/

MAINTAINER=	Dmitrij D. Czarkoff

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 atk-1.0 c cairo cairo-gobject fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += javascriptcoregtk-4.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pthread soup-2.4 webkit2gtk-4.0 z

MASTER_SITES =	http://spacehopper.org/mirrors/

MODULES =	devel/gettext

LIB_DEPENDS =	www/webkitgtk4
RUN_DEPENDS =	devel/xdg-utils \
		multimedia/gstreamer1/plugins-libav \
		net/curl \
		x11/dmenu

NO_TEST =	Yes

.include <bsd.port.mk>
