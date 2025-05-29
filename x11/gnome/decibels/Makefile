COMMENT=		play audio files

DIST_TUPLE=		gnome GNOME decibels 48.0 .
DIST_TUPLE +=		gnome BrainBlasted gi-typescript-definitions fdab5faa8f92b65407744a302bb8e1fab979bd94 gi-types
# XXX GNOME 48
#DIST_TUPLE +=		gnome BrainBlasted gi-typescript-definitions 689f364e13cd52e7f603c6eb464f553b98d6393f gi-types

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

# XXX enforced in meson.build:
# gnome.post_install(
#   gtk_update_icon_cache: true,
#   update_desktop_database: true,
# )
BUILD_DEPENDS +=		devel/desktop-file-utils \
				x11/gtk+4,-guic

.include <bsd.port.mk>
