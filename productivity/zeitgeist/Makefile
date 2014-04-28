# $OpenBSD: Makefile,v 1.23 2014/04/28 14:45:13 ajacoutot Exp $

COMMENT =		event logging framework

V =			0.9.14
DISTNAME =		zeitgeist-${V}
EPOCH =			0
REVISION =		4

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

# http://cgit.freedesktop.org/zeitgeist/zeitgeist/patch/?id=d2c966faf4979b5745ea0df8062795fc82b9fcc1
pre-configure:
.for i in datahub/Makefile.in examples/vala/Makefile.in extensions/Makefile.in \
    extensions/fts++/Makefile.in libzeitgeist/Makefile.in src/Makefile.in \
    test/direct/Makefile.in
	perl -pi -e 's,--target-glib=2.26,--target-glib=2.36,g' ${WRKSRC}/$i
.endfor

.include <bsd.port.mk>
