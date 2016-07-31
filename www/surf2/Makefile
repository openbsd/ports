# $OpenBSD: Makefile,v 1.7 2016/07/31 17:54:37 czarkoff Exp $

COMMENT =	simple webbrowser based on webkit/gtk+

DISTNAME =	surf2-0.6.20160708
CATEGORIES =	www
HOMEPAGE =	http://surf.suckless.org/

MAINTAINER=	Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 javascriptcoregtk-4.0
WANTLIB += pango-1.0 pangocairo-1.0 pthread soup-2.4 webkit2gtk-4.0

GH_ACCOUNT =	czarkoff
GH_PROJECT =	surf2
GH_COMMIT =	c64c368d86a4319e43b7ff3d73a4afe0f4e8adf0

MODULES =	devel/gettext

LIB_DEPENDS =	www/webkitgtk4
RUN_DEPENDS =	devel/xdg-utils \
		multimedia/gstreamer1/plugins-libav \
		multimedia/mpv \
		net/curl \
		x11/dmenu

NO_TEST =	Yes

.include <bsd.port.mk>
