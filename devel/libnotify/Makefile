COMMENT=		send desktop notifications to a notification daemon

GNOME_VERSION=		0.7.11
GNOME_PROJECT=		libnotify

CATEGORIES=		devel

SHARED_LIBS += notify                    4.0 # 4.0.0

HOMEPAGE=		http://www.galago-project.org/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += c gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0

MODULES=		devel/meson \
			x11/gnome

BUILD_DEPENDS=		textproc/gtk-doc \
			textproc/xmlto

# gtk+3 is needed to build the tests
BUILD_DEPENDS +=	x11/gtk+3

LIB_DEPENDS=		graphics/gdk-pixbuf2

MODGNOME_TOOLS=		gobject-introspection

# XXX "need to install docbook-xsl-ns or similar package"
# http://docbook.sourceforge.net/release/xsl-ns/current/manpages/docbook.xsl
#MODGNOME_TOOLS +=	docbook
CONFIGURE_ARGS +=	-Dman=false

.include <bsd.port.mk>
