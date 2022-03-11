COMMENT =	vte-based terminal emulator of LXDE

V =		0.3.2
DISTNAME =	lxterminal-$V

CATEGORIES =	x11

HOMEPAGE =	https://wiki.lxde.org/en/LXTerminal

MAINTAINER =	Shawn Chiou

# GPL v2
PERMIT_PACKAGE=	Yes

WANTLIB +=	atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB +=	gio-2.0 glib-2.0 gobject-2.0 gtk-3 harfbuzz intl pango-1.0
WANTLIB +=	pangocairo-1.0 pthread vte-2.91

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=lxde/files/}

EXTRACT_SUFX =	.tar.xz

MODULES =	textproc/intltool

BUILD_DEPENDS = devel/gettext,-tools
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic
LIB_DEPENDS =	devel/vte3 \
		x11/gtk+3

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = --enable-gtk3

NO_TEST =	Yes

.include <bsd.port.mk>
