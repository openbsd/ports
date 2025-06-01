COMMENT=		play audio files

DIST_TUPLE=		gnome GNOME decibels 48.0 .
DIST_TUPLE +=		gnome BrainBlasted gi-typescript-definitions dbbaa0527556cd3ce5434c4a5072cd99348eff7a gi-types
REVISION=		0

CATEGORIES=		audio multimedia

HOMEPAGE=		https://apps.gnome.org/Decibels/

# GPLv3
PERMIT_PACKAGE=		Yes

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

BUILD_DEPENDS=		devel/appstream \
			devel/py-gobject3 \
			lang/typescript \
			x11/blueprint-compiler \
			x11/gnome/gjs \
			x11/gnome/libadwaita

RUN_DEPENDS=		devel/py-gobject3 \
			multimedia/gstreamer1/plugins-good \
			x11/gnome/gjs \
			x11/gnome/libadwaita

.include <bsd.port.mk>
