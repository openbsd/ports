COMMENT=		text widget that extends the GTK4 GtkTextView widget

GNOME_PROJECT=		gtksourceview
GNOME_VERSION=		5.4.0
PKGNAME=		${GNOME_PROJECT}5-${GNOME_VERSION}

SHARED_LIBS += gtksourceview-5           0.2 # 0.0.0

CATEGORIES=		x11

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2/LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += cairo fontconfig fribidi gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-4 intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre2-8 xml2

MODULES=		devel/meson \
			x11/gnome

LIB_DEPENDS=		devel/pcre2 \
			textproc/libxml \
			x11/gtk+4

MODGNOME_TOOLS=		gobject-introspection gtk-update-icon-cache vala

TEST_IS_INTERACTIVE=	x11

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
