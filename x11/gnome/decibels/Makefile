COMMENT=		play audio files

GNOME_PROJECT=		decibels
GNOME_VERSION=		48.0
REVISION=		1

CATEGORIES=		audio multimedia

HOMEPAGE=		https://apps.gnome.org/Decibels/

# GPLv3
PERMIT_PACKAGE=		Yes

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

BUILD_DEPENDS=		devel/appstream \
			lang/typescript \
			x11/blueprint-compiler \
			x11/gnome/gjs \
			x11/gnome/libadwaita

RUN_DEPENDS=		devel/py-gobject3 \
			multimedia/gstreamer1/plugins-good \
			x11/gnome/gjs \
			x11/gnome/libadwaita

.include <bsd.port.mk>
