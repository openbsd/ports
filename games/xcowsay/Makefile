COMMENT =		displays a cute cow and message on your desktop
DISTNAME =		xcowsay-1.6
CATEGORIES =		games

HOMEPAGE =		https://www.doof.me.uk/xcowsay/

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 harfbuzz intl pango-1.0
WANTLIB += pangocairo-1.0 pthread

MASTER_SITES =		http://www.nickg.me.uk/files/
CONFIGURE_STYLE =	gnu

LIB_DEPENDS =		x11/gtk+3

.include <bsd.port.mk>
