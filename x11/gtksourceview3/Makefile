# $OpenBSD: Makefile,v 1.75 2019/07/12 20:51:13 sthen Exp $

PORTROACH=		limit:^3

COMMENT=		text widget that extends the GTK3 GtkTextView widget

GNOME_PROJECT=		gtksourceview
GNOME_VERSION=		3.24.11
PKGNAME=		${GNOME_PROJECT}3-${GNOME_VERSION}

SHARED_LIBS +=	gtksourceview-3.0    3.5      # .9.0
CATEGORIES=		x11

MAJOR_VERSION=		3.0
SUBST_VARS=		MAJOR_VERSION

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2/LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 cairo
WANTLIB += cairo-gobject epoxy expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz iconv intl lzma m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += pthread xcb xcb-render xcb-shm xml2 z fribidi

MODULES=		x11/gnome

LIB_DEPENDS=		textproc/libxml \
			x11/gtk+3

MODGNOME_TOOLS +=	gobject-introspection vala

AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf

TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
