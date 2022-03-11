COMMENT =	simple webbrowser based on webkit/gtk+

DISTNAME =	surf-2.1
CATEGORIES =	www
HOMEPAGE =	http://surf.suckless.org/
REVISION =	0

MAINTAINER=	Joerg Jung <jung@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += X11 atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 javascriptcoregtk-4.0
WANTLIB += pango-1.0 pangocairo-1.0 soup-2.4 webkit2gtk-4.0 intl
WANTLIB += gck-1 gcr-base-3 gcr-ui-3 gmodule-2.0 gthread-2.0 harfbuzz
WANTLIB += p11-kit pthread

MASTER_SITES =	http://dl.suckless.org/surf/

LIB_DEPENDS =	devel/gettext,-runtime \
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
