# $OpenBSD: Makefile,v 1.45 2021/12/07 10:25:27 landry Exp $

COMMENT=	gtk+ clone of the lines ball logic game

GH_ACCOUNT =	emorozov
GH_PROJECT =	gtkballs
GH_COMMIT =	6e53b6686de9782e3c0ef2bb26f3f9b70b5b675b
DISTNAME=	gtkballs-3.1.5pl0
CATEGORIES=	games x11

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 harfbuzz intl pango-1.0
WANTLIB += pangocairo-1.0 pthread

LIB_DEPENDS=	x11/gtk+3

NO_TEST=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=autoreconf
AUTORECONF=	./autogen.sh
AUTOMAKE_VERSION=1.16
AUTOCONF_VERSION=2.69
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
