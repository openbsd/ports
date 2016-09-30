# $OpenBSD: Makefile,v 1.9 2016/09/30 23:47:28 czarkoff Exp $

COMMENT =	simple webbrowser based on webkit/gtk+

DISTNAME =	surf2-0.6.20160922
CATEGORIES =	www
HOMEPAGE =	http://surf.suckless.org/

MAINTAINER=	Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 c gdk-3 glib-2.0 gobject-2.0 gtk-3 webkit2gtk-4.0

GH_ACCOUNT =	czarkoff
GH_PROJECT =	surf2
GH_COMMIT =	da5290a41aac4eabef83f6b88039f44d28b0ea00

LIB_DEPENDS =	www/webkitgtk4
RUN_DEPENDS =	devel/xdg-utils \
		multimedia/gstreamer1/plugins-libav \
		multimedia/mpv \
		net/curl \
		x11/dmenu

NO_TEST =	Yes

.include <bsd.port.mk>
