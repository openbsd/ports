# $OpenBSD: Makefile,v 1.21 2014/04/03 12:37:41 jasper Exp $

COMMENT =		event logging framework

V =			0.9.14
DISTNAME =		zeitgeist-${V}
EPOCH =			0
REVISION =		3

SHARED_LIBS +=	zeitgeist-2.0             0.0 # 0.0

CATEGORIES =		productivity

HOMEPAGE =		https://launchpad.net/zeitgeist

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2 - LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 dbus-glib-1 expat ffi
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += harfbuzz json-glib-1.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs sqlite3 telepathy-glib
WANTLIB += xcb xcb-render xcb-shm z

MASTER_SITES =		http://edge.launchpad.net/zeitgeist/${V:R}/${V}/+download/
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/gettext \
			lang/python \
			x11/gnome

MODGNOME_TOOLS +=	gobject-introspection vala

# https://bugs.freedesktop.org/show_bug.cgi?id=73837
MODPY_ADJ_FILES =	data/ontology2code

BUILD_DEPENDS =		textproc/py-rdflib \
			textproc/raptor

RUN_DEPENDS =		x11/dbus-python

TEST_DEPENDS =		devel/py-gobject3

LIB_DEPENDS =		devel/json-glib \
			net/telepathy/telepathy-glib \
			x11/gtk+3

MAKE_FLAGS=		LIBZEITGEIST_LT_VERSION=${LIBzeitgeist-2.0_VERSION:R}:${LIBzeitgeist-2.0_VERSION:E}
FAKE_FLAGS=		zeitgeistdocdir="${PREFIX}/share/doc/zeitgeist/" \
			sysconfdir="${PREFIX}/share/examples/zeitgeist/"

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
