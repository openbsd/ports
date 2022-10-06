COMMENT =	drag and drop source/target for X

V =		1.2.0
PKGNAME =	dragon-drop-${V}

GH_ACCOUNT =	mwh
GH_PROJECT =	dragon
GH_TAGNAME =	v${V}

CATEGORIES =	x11

MAINTAINER =	Thim Cederlund <thim@cederlund.de>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 harfbuzz intl pango-1.0
WANTLIB += pangocairo-1.0 pthread

LIB_DEPENDS =	x11/gtk+3

FAKE_FLAGS =	MANPREFIX="${TRUEPREFIX}/man" \
		NAME=dragon-drop \
		PREFIX="${TRUEPREFIX}"

.include <bsd.port.mk>
