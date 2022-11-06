COMMENT=		library for integration of cloud storage providers

GNOME_PROJECT=		libcloudproviders
GNOME_VERSION=		0.3.1

SHARED_LIBS += cloudproviders            0.0 # 0.3.1

# override gnome MODULE
MASTER_SITES=		https://gitlab.gnome.org/World/${GNOME_PROJECT}/-/archive/${GNOME_VERSION}/
EXTRACT_SUFX=		.tar.gz

# LGPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += gio-2.0 glib-2.0 gobject-2.0

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

LIB_DEPENDS=		devel/glib2

.include <bsd.port.mk>
