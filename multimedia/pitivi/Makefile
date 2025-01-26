COMMENT=		intuitive and featureful movie editor

GNOME_PROJECT=		pitivi
GNOME_VERSION=		2023.03

CATEGORIES=		multimedia

HOMEPAGE=		https://pitivi.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE=		Yes

WANTLIB += cairo glib-2.0 gobject-2.0 gstreamer-1.0 ${MODPY_WANTLIB}

SITES=			https://download.gnome.org/sources/pitivi/${GNOME_VERSION:R}/

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

MODGNOME_TOOLS= 	desktop-file-utils gtk-update-icon-cache \
			shared-mime-info yelp

### for dependencies, see pitivi/check.py

BUILD_DEPENDS=		graphics/py-cairo

# needed for tests
BUILD_DEPENDS +=	multimedia/gstreamer1/devtools

LIB_DEPENDS=		multimedia/gstreamer1/core

RUN_DEPENDS=		devel/py-gobject3 \
			graphics/py-cairo \
			graphics/py-matplotlib \
			math/py-scipy \
			math/py-numpy \
			multimedia/gstreamer1/libav \
			multimedia/gstreamer1/py-gstreamer

# introspection
RUN_DEPENDS +=		audio/gsound # GSound
RUN_DEPENDS +=		devel/libnotify # Notify
RUN_DEPENDS +=		devel/libpeas # Peas
RUN_DEPENDS +=		multimedia/gstreamer1/editing-services # GES
RUN_DEPENDS +=		multimedia/gstreamer1/plugins-bad # GstTranscoder, debugutilsbad
RUN_DEPENDS +=		multimedia/gstreamer1/plugins-base # GstVideo (-> Gst)
RUN_DEPENDS +=		multimedia/gstreamer1/plugins-good # Gtk (-> Gio, gtk, gdkpixbuf, PangoCairo)

.include <bsd.port.mk>
