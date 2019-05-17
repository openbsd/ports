# $OpenBSD: Makefile,v 1.6 2019/05/17 16:45:28 sthen Exp $

COMMENT=		text widget that extends the GTK3 GtkTextView widget

GNOME_PROJECT=		gtksourceview
GNOME_VERSION=		4.2.0
PKGNAME=		${GNOME_PROJECT}4-${GNOME_VERSION}
REVISION=		0

SHARED_LIBS +=	gtksourceview-4    0.0      # 0.0
CATEGORIES=		x11

MAJOR_VERSION=		4.0
SUBST_VARS=		MAJOR_VERSION

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2/LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 atk-bridge-2.0 cairo cairo-gobject epoxy
WANTLIB += expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz iconv intl lzma m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread xcb
WANTLIB += xcb-render xcb-shm xml2 z

MODULES=		x11/gnome

LIB_DEPENDS=		textproc/libxml \
			x11/gtk+3

MODGNOME_TOOLS +=	gobject-introspection vala

CONFIGURE_STYLE =	gnu
TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
