COMMENT=		API for handling SSDP resource discovery and announcement

GNOME_PROJECT=		gssdp
GNOME_VERSION=		1.6.2

SHARED_LIBS += gssdp-1.6                 0.0 # 0.106.2

CATEGORIES=		net devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 gtk-4 intl soup-3.0

MODULES=		devel/meson \
			x11/gnome

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MODGNOME_TOOLS +=	gobject-introspection vala

BUILD_DEPENDS=		textproc/pandoc

LIB_DEPENDS=		devel/libsoup3 \
			x11/gtk+4

.include <bsd.port.mk>
