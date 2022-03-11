COMMENT =	lightweight graphical download manager
DISTNAME =	uget-2.2.2
CATEGORIES =	www net x11
REVISION =	0

HOMEPAGE =	https://ugetdm.com/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject crypto curl gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gstreamer-1.0 gtk-3 harfbuzz
WANTLIB += intl notify pango-1.0 pangocairo-1.0 pthread

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=urlget/}

MODULES =	textproc/intltool

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	devel/gettext,-runtime \
		devel/libnotify \
		multimedia/gstreamer1/core \
		net/curl \
		x11/gtk+3

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic \
		www/aria2

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# BSD make doesn't install the localization files.
USE_GMAKE =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/uget/UgetAria2.c

.include <bsd.port.mk>
