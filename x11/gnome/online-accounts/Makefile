COMMENT=	interfaces for interacting with online accounts

GNOME_PROJECT=	gnome-online-accounts
GNOME_VERSION=	3.48.1

SHARED_LIBS += goa-1.0                   4.0 # 0.0.0
SHARED_LIBS += goa-backend-1.0           4.0 # 1.0.0

# LGPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 gtk-3 intl javascriptcoregtk-4.1
WANTLIB += json-glib-1.0 rest-1.0 secret-1 soup-3.0 webkit2gtk-4.1
WANTLIB += xml2

COMPILER=	base-clang ports-gcc base-gcc

MODULES=	devel/dconf \
		devel/meson \
		x11/gnome

LIB_DEPENDS=	devel/json-glib \
		x11/gnome/librest1 \
		x11/gnome/libsecret \
		www/webkitgtk4,webkitgtk41

MODGNOME_TOOLS=	docbook gobject-introspection gtk-update-icon-cache vala

# until proven useful
CONFIGURE_ARGS +=	-Dkerberos=false

DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.mk>
