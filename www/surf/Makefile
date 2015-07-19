# $OpenBSD: Makefile,v 1.21 2015/07/19 05:58:59 czarkoff Exp $

COMMENT =	simple webbrowser based on webkit/gtk+

DISTNAME =	surf-0.6
CATEGORIES =	www
HOMEPAGE =	http://surf.suckless.org/
REVISION =	2

MAINTAINER=	Joerg Jung <jung@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 javascriptcoregtk-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread soup-2.4 webkitgtk-1.0 z

MASTER_SITES =	http://dl.suckless.org/surf/

MODULES =	devel/gettext

LIB_DEPENDS =	www/webkit>=1.6.1v0
RUN_DEPENDS =	x11/dmenu

# webkit browsing
RUN_DEPENDS +=	multimedia/gstreamer1/plugins-libav

NO_TEST =	Yes

.include <bsd.port.mk>
