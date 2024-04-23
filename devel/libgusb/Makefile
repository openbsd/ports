COMMENT=		GObject wrapper for libusb1

GH_ACCOUNT=		hughsie
GH_PROJECT=		libgusb
GH_TAGNAME=		0.4.9

SHARED_LIBS += gusb                      0.4 # 2.0.10

CATEGORIES=		devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 json-glib-1.0 usb-1.0

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gi-docgen gobject-introspection vala

LIB_DEPENDS=		devel/json-glib \
			devel/libusb1

CONFIGURE_ARGS=		-Dumockdev=disabled

CONFIGURE_ARGS +=	-Dusb_ids=${LOCALBASE}/share/hwdata/usb.ids
RUN_DEPENDS +=		misc/hwdata
# contrib/generate-version-script.py requires pkg_resources (part of
# setuptools)
BUILD_DEPENDS +=	devel/py-setuptools,python3

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
