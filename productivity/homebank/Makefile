COMMENT =	personal accounting application

DISTNAME =	homebank-5.7.2

CATEGORIES =	productivity x11

HOMEPAGE =	http://homebank.free.fr

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org> \
		Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gtk-3 harfbuzz
WANTLIB += intl m ofx pango-1.0 pangocairo-1.0 pthread soup-3.0

SITES =		http://homebank.free.fr/public/sources/

MODULES =	textproc/intltool

LIB_DEPENDS =	devel/gettext,-runtime \
		devel/glib2 \
		devel/harfbuzz \
		devel/libofx \
		devel/libsoup3 \
		devel/pango graphics/cairo \
		graphics/gdk-pixbuf2 \
		x11/gtk+3

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+4,-guic

USE_GMAKE =	Yes

NO_TEST =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
