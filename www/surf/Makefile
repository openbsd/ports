# $OpenBSD: Makefile,v 1.17 2013/03/11 17:08:51 bcallah Exp $

COMMENT =	simple webbrowser based on webkit/gtk+

DISTNAME =	surf-0.6
CATEGORIES =	www
HOMEPAGE =	http://surf.suckless.org/

MAINTAINER=	Joerg Jung <jung@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-x11-2.0 javascriptcoregtk-1.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pthread soup-2.4 webkitgtk-1.0 z

MASTER_SITES =	http://dl.suckless.org/surf/

MODULES =	devel/gettext
USE_GROFF =	Yes

LIB_DEPENDS =	www/webkit>=1.6.1v0
RUN_DEPENDS =	x11/dmenu

# webkit browsing
RUN_DEPENDS +=	multimedia/gstreamer-0.10/plugins-ffmpeg \
		multimedia/gstreamer-0.10/plugins-good

NO_TEST =	Yes

.include <bsd.port.mk>
