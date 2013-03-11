# $OpenBSD: Makefile,v 1.16 2013/03/11 11:44:49 espie Exp $

COMMENT =	simple webbrowser based on webkit/gtk+

DISTNAME =	surf-0.5
CATEGORIES =	www
HOMEPAGE =	http://surf.suckless.org/

MAINTAINER=	Joerg Zinke <zinke@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 javascriptcoregtk-1.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs soup-2.4 webkitgtk-1.0 xcb xcb-render
WANTLIB += xcb-shm z

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
