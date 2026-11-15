COMMENT=	simple GTK+ text editor

GH_ACCOUNT=	stevenhoneyman
GH_PROJECT=	l3afpad
GH_COMMIT=	16f22222116b78b7f6a6fd83289937cdaabed624
DISTNAME=	leafpad-0.8.20pre0

CATEGORIES=	editors x11

HOMEPAGE=	http://tarot.freeshell.org/leafpad/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 harfbuzz intl pango-1.0
WANTLIB += pangocairo-1.0 pthread

MODULES=	textproc/intltool

LIB_DEPENDS=	x11/gtk+3

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+4,-guic

USE_GMAKE=	Yes

AUTOCONF_VERSION=	2.72
AUTOMAKE_VERSION=	1.19
AUTORECONF=	/bin/sh ./autogen.sh

CONFIGURE_STYLE=autoreconf

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	cd ${PREFIX}/bin && ln -sf l3afpad leafpad

.include <bsd.port.mk>
