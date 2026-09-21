COMMENT=		UDev GObject bindings

GNOME_PROJECT=		libgudev
GNOME_VERSION=		237

SHARED_LIBS += gudev-1.0                 0.0 # 0.3.0

CATEGORIES=		sysutils devel

HOMEPAGE=		https://gitlab.gnome.org/GNOME/libgudev

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += glib-2.0 gobject-2.0 udev

MODULES=		devel/meson \
			x11/gnome


MODGNOME_TOOLS=		gobject-introspection vala

LIB_DEPENDS=		devel/glib2 \
			sysutils/libudev-openbsd

# XXX needs umockdev-1.0
CONFIGURE_ARGS +=	-Dtests=disabled

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
