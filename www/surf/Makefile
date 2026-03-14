COMMENT =	simple webbrowser based on webkit/gtk+

DISTNAME =	surf-2.1
CATEGORIES =	www
HOMEPAGE =	http://surf.suckless.org/
REVISION =	5

MAINTAINER=	Joerg Jung <jung@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += X11 atk-1.0 c cairo cairo-gobject gck-1 gcr-base-3
WANTLIB += gcr-ui-3 gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-3 harfbuzz intl javascriptcoregtk-4.1
WANTLIB += p11-kit pango-1.0 pangocairo-1.0 pthread soup-3.0 webkit2gtk-4.1

SITES =		http://dl.suckless.org/surf/

LIB_DEPENDS =	devel/gettext,-runtime \
		x11/gnome/gcr \
		www/webkitgtk4,webkitgtk41
RUN_DEPENDS =	x11/dmenu \
		net/curl

# webkit browsing
RUN_DEPENDS +=	multimedia/gstreamer1/libav

MAKE_FLAGS=	CC="${CC}"
MAKE_ENV=	LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=	DESTDIR=""

NO_TEST =	Yes

.include <bsd.port.mk>
