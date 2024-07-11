COMMENT =		graphical 8085 simulator, assembler, and debugger

V =			1.4.1
DISTNAME =		gnusim8085-${V}

CATEGORIES =		emulators devel

HOMEPAGE =		https://gnusim8085.srid.ca/

# GPLv2+
PERMIT_PACKAGE =		Yes

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 gtksourceview-3.0
WANTLIB += harfbuzz intl pango-1.0 pangocairo-1.0

SITES =			https://github.com/GNUSim8085/GNUSim8085/releases/download/$V/

BUILD_DEPENDS =		devel/gettext,-tools \
			textproc/discount
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic
LIB_DEPENDS =		x11/gtksourceview3

CONFIGURE_STYLE =	gnu

pre-configure:
	sed -i s/markdown/discount/g \
		${WRKSRC}/configure ${WRKSRC}{,/*,/*/*}/Makefile.in

.include <bsd.port.mk>
