COMMENT =	proxy StatusNotifierItems as XEmbedded systemtray-spec icons

DIST_TUPLE +=	srht steef snixembed 0.3.3 .

CATEGORIES =	x11

MAINTAINER =	izzy Meyer <izder456@disroot.org>

# ISC
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =		lang/vala
RUN_DEPENDS =		x11/dbus x11/gtk+3 devel/glib2
LIB_DEPENDS =		x11/libdbusmenu

WANTLIB += X11 atk-1.0 c cairo cairo-gobject dbusmenu-glib dbusmenu-gtk3
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gtk-3 harfbuzz harfbuzz-gobject intl pango-1.0 pangocairo-1.0
WANTLIB += pthread

MAKE_ENV =		PREFIX=$(TRUEPREFIX)
FAKE_FLAGS =		PREFIX=$(TRUEPREFIX)
MAKE_FLAGS =		MANDIR=/man

USE_GMAKE =		Yes

MAKE_FILE =		makefile

ALL_TARGET =		snixembed
INSTALL_TARGET =	install

.include <bsd.port.mk>
