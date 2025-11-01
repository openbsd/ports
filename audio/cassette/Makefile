COMMENT =		unofficial Yandex Music client

DIST_TUPLE =		gnome	Rirusha	Cassette	v0.2.1	.
WRKDIST =		${WRKDIR}/${DISTNAME:S/-/-v/}
PKGNAME =		${DISTNAME:L}
REVISION =		0

CATEGORIES =		audio x11

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# GPL 3.0+
PERMIT_PACKAGE =	Yes

WANTLIB +=		adwaita-1 c cairo gdk_pixbuf-2.0 gee-0.8 gio-2.0
WANTLIB +=		glib-2.0 gobject-2.0 gstreamer-1.0 gtk-4 intl
WANTLIB +=		json-glib-1.0 m soup-3.0 sqlite3 webkitgtk-6.0 xml2

MODULES =		devel/dconf \
			devel/meson

BUILD_DEPENDS =		devel/gettext,-tools \
			lang/vala,-main \
			x11/blueprint-compiler

LIB_DEPENDS =		databases/sqlite3 \
			devel/gettext,-runtime \
			devel/glib2 \
			devel/json-glib \
			devel/libgee \
			devel/libsoup3 \
			graphics/cairo \
			graphics/gdk-pixbuf2 \
			multimedia/gstreamer1/core \
			textproc/libxml \
			www/webkitgtk4,webkitgtk60 \
			x11/gnome/libadwaita

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic

TEST_DEPENDS =		devel/appstream,-main

# lots of noise, may hide relevant stuff
CFLAGS +=		-Wno-unused-but-set-variable \
			-Wno-unused-function \
			-Wno-unused-variable

# for tests
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
