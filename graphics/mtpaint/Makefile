COMMENT =	simple GTK+3 raster painting program

DISTNAME =	mtpaint-3.50
REVISION =	0
EXTRACT_SUFX =	.tar.bz2

CATEGORIES =	graphics

HOMEPAGE =	http://mtpaint.sourceforge.net/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += X11 atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB += intl jasper jpeg lcms2 m pango-1.0 pangocairo-1.0 png
WANTLIB += pthread tiff z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=mtpaint/}

BUILD_DEPENDS =	devel/gettext,-tools
LIB_DEPENDS =	devel/gettext,-runtime \
		graphics/jasper \
		graphics/lcms2 \
		graphics/tiff \
		x11/gtk+3
RUN_DEPENDS =	devel/desktop-file-utils

USE_GMAKE =	Yes
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	nogif jpeg jasper staticft tiff lcms \
		 	lcms2 intl man thread cflags gtk3 \
		 	--mandir=${TRUEPREFIX}/man
CONFIGURE_ENV +=	LDFLAGS="${LDFLAGS} -L${X11BASE}/lib"

NO_TEST =	Yes

.include <bsd.port.mk>
