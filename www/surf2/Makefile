# $OpenBSD: Makefile,v 1.5 2016/01/18 22:32:12 czarkoff Exp $

COMMENT =	simple webbrowser based on webkit/gtk+

DISTNAME =	surf2-0.6.20151201
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
GH_COMMIT =	934705c420a25054b9be55a5321e97d6d56579e2

MODULES =	devel/gettext

LIB_DEPENDS =	www/webkitgtk4
RUN_DEPENDS =	devel/xdg-utils \
		multimedia/gstreamer1/plugins-libav \
		multimedia/mpv \
		net/curl \
		x11/dmenu

NO_TEST =	Yes

.include <bsd.port.mk>
