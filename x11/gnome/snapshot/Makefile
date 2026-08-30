COMMENT=		take pictures and videos

GNOME_PROJECT=		snapshot
GNOME_VERSION=		51.beta
PKGNAME=		${GNOME_PROJECT}-${GNOME_VERSION:S/.//}0
REVISION=		0

CATEGORIES=		graphics

# GPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += ${MODCARGO_WANTLIB} adwaita-1 gio-2.0 glib-2.0 glycin-2
WANTLIB += glycin-gtk4-2 gobject-2.0 graphene-1.0 gstbase-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gstvideo-1.0 gtk-4 intl
WANTLIB += pango-1.0

MODULES=		devel/meson \
			devel/dconf \
			devel/cargo \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

LIB_DEPENDS=		multimedia/gstreamer1/plugins-base \
			x11/gnome/glycin \
			x11/gnome/libadwaita

# gtk4paintablesink
RUN_DEPENDS +=		multimedia/gstreamer1/plugins-rs

# libgstpipewire
RUN_DEPENDS +=		multimedia/pipewire/pipewire

# needed for camerabin
BUILD_DEPENDS +=	multimedia/gstreamer1/plugins-bad
RUN_DEPENDS +=		multimedia/gstreamer1/plugins-bad

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include "crates.inc"

.include <bsd.port.mk>
