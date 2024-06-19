COMMENT=		GLib / GObject wrapper for the Microsoft Graph API

GNOME_PROJECT=		msgraph
GNOME_VERSION=		0.2.3

SHARED_LIBS += msgraph-0                 0.0 # 0.2.2

# LGPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += gio-2.0 glib-2.0 goa-1.0 gobject-2.0 intl json-glib-1.0
WANTLIB += soup-3.0

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gi-docgen gobject-introspection

BUILD_DEPENDS=		net/uhttpmock
TEST_DEPENDS=		net/uhttpmock

LIB_DEPENDS=		x11/gnome/online-accounts

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
