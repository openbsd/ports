# $OpenBSD: Makefile,v 1.8 2013/03/28 19:56:09 jasper Exp $

COMMENT =		event logging framework

V =			0.9.10
DISTNAME =		zeitgeist-${V}

SHARED_LIBS +=	zeitgeist-2.0             0.0 # 0.0

CATEGORIES =		productivity

HOMEPAGE =		http://zeitgeist-project.com/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://edge.launchpad.net/zeitgeist/${V:R}/${V}/+download/
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS =		textproc/py-rdflib \
			textproc/raptor \
			x11/dbus

RUN_DEPENDS =		devel/py-gobject \
			devel/py-xdg \
			x11/dbus-python

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 dbus-glib-1 expat ffi
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += harfbuzz icudata icule icuuc json-glib-1.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs sqlite3 telepathy-glib xcb xcb-render
WANTLIB += xcb-shm z

MODGNOME_TOOLS =	goi vala

LIB_DEPENDS =		devel/json-glib \
			net/telepathy/telepathy-glib \
			x11/gtk+3

MAKE_FLAGS +=		LIBZEITGEIST_LT_VERSION=${LIBzeitgeist-2.0_VERSION:R}:${LIBzeitgeist-2.0_VERSION:E}:0
FAKE_FLAGS +=		zeitgeistdocdir="${PREFIX}/share/doc/zeitgeist/" \
			sysconfdir="${PREFIX}/share/examples/zeitgeist/"

CONFIGURE_STYLE =	gnu
# XXX: FTS++ fails to build in controller.cpp; needs fixing.
CONFIGURE_ARGS +=	--disable-fts
# XXX: Requires dee-icu which has not been ported yet
CONFIGURE_ARGS +=	--without-dee-icu

.include <bsd.port.mk>
