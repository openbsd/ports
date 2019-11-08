# $OpenBSD: Makefile,v 1.63 2019/11/08 21:30:37 ajacoutot Exp $

PORTROACH=		limit:^2.0

COMMENT=		text widget that extends GTK2's GtkTextView widget#'

MAJOR_VERSION=		2.0
GNOME_PROJECT=		gtksourceview
GNOME_VERSION=		2.10.5
REVISION=		7

SHARED_LIBS +=	gtksourceview-2.0    5.0      # .0.0

CATEGORIES=		x11

SUBST_VARS=		MAJOR_VERSION

HOMEPAGE=		http://gtksourceview.sourceforge.net/

# GPLv2/LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 cairo expat ffi fontconfig freetype fribidi
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz iconv
WANTLIB += intl lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread xcb xcb-render xcb-shm xml2 z

EXTRACT_SUFX=		.tar.bz2


MODULES=		x11/gnome

LIB_DEPENDS=		textproc/libxml \
			x11/gtk+2

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
