COMMENT=		source code editing widget

GH_ACCOUNT=		gedit-technology
GH_PROJECT=		libgedit-gtksourceview
GH_TAGNAME=		299.2.1

SHARED_LIBS += gedit-gtksourceview-300   0.1 # 0

CATEGORIES=		x11

HOMEPAGE=		https://gedit-technology.net/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += cairo gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3 intl pango-1.0 pangocairo-1.0 xml2

MODULES=		devel/meson \
			x11/gnome

BUILD_DEPENDS=		devel/gettext,-tools \
			textproc/gtk-doc

LIB_DEPENDS=		textproc/libxml \
			x11/gtk+3

MODGNOME_TOOLS=		gobject-introspection gtk-update-icon-cache

TEST_DEPENDS=		shells/bash
TEST_IS_INTERACTIVE=	x11

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
