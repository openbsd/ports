COMMENT=		simple sound recorder for your desktop

GNOME_PROJECT=		gnome-sound-recorder
GNOME_VERSION=		43.beta
PKGNAME=		gnome-sound-recorder-${GNOME_VERSION:S/.//}0

# GPLv2
PERMIT_PACKAGE=		Yes

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache \
			gobject-introspection

BUILD_DEPENDS=		multimedia/gstreamer1/plugins-base \
			x11/gnome/gjs \
			x11/gnome/libadwaita

RUN_DEPENDS=		multimedia/gstreamer1/plugins-base \
			x11/gnome/gjs \
			x11/gnome/libadwaita
# pulsesrc
BUILD_DEPENDS +=	multimedia/gstreamer1/plugins-good
RUN_DEPENDS +=		multimedia/gstreamer1/plugins-good
			
.include <bsd.port.mk>
