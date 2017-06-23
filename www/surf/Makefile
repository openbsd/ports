# $OpenBSD: Makefile,v 1.24 2017/06/23 19:50:42 czarkoff Exp $

COMMENT =	simple webbrowser based on webkit/gtk+

DISTNAME =	surf-2.0
CATEGORIES =	www
HOMEPAGE =	http://surf.suckless.org/
REVISION =	0

MAINTAINER=	Joerg Jung <jung@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 javascriptcoregtk-4.0
WANTLIB += pango-1.0 pangocairo-1.0 soup-2.4 webkit2gtk-4.0 intl

MASTER_SITES =	http://dl.suckless.org/surf/

LIB_DEPENDS =	devel/gettext \
		www/webkitgtk4
RUN_DEPENDS =	x11/dmenu \
		net/curl

# webkit browsing
RUN_DEPENDS +=	multimedia/gstreamer1/plugins-libav

MAKE_FLAGS=	CC="${CC}"
MAKE_ENV=	LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=	DESTDIR=""

NO_TEST =	Yes

.include <bsd.port.mk>
