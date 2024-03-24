COMMENT=		Google Data API based Glib client library

GNOME_PROJECT=		libgdata
GNOME_VERSION=		0.18.1
REVISION=		1

SHARED_LIBS += gdata                     22.0 # 22.5.0

CATEGORIES=		devel net

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += gcr-4 gio-2.0 glib-2.0 goa-1.0 gobject-2.0 json-glib-1.0
WANTLIB += soup-2.4 xml2

MODULES=		devel/meson \
			x11/gnome

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# needed for demos/scrapbook
BUILD_DEPENDS +=	x11/gtk+3

LIB_DEPENDS=		devel/libsoup \
			x11/gnome/gcr4 \
			x11/gnome/online-accounts

MODGNOME_TOOLS=		gobject-introspection vala

# needed for tests
PORTHOME=		${WRKDIR}

CONFIGURE_ARGS=		-Dinstalled_tests=false \
			-Doauth1=disabled

# needs uhttpmock with libsoup 2
CONFIGURE_ARGS +=	-Dalways_build_tests=false

.include <bsd.port.mk>
