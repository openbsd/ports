COMMENT=		API for handling SSDP resource discovery and announcement

GNOME_PROJECT=		gssdp
GNOME_VERSION=		1.6.3
REVISION=		0

SHARED_LIBS += gssdp-1.6                 0.0 # 0.106.3

CATEGORIES=		net devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 gtk-4 intl soup-3.0

MODULES=		devel/meson \
			x11/gnome

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MODGNOME_TOOLS +=	gobject-introspection vala

# XXX textproc/pandoc does not build on exopi
#BUILD_DEPENDS=		textproc/pandoc
CONFIGURE_ARGS +=	-Dmanpages=false

LIB_DEPENDS=		devel/libsoup3 \
			x11/gtk+4

.include <bsd.port.mk>
