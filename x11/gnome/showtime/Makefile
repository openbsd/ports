COMMENT=		play videos

GNOME_PROJECT=		showtime
GNOME_VERSION=		49.0

CATEGORIES=		multimedia

HOMEPAGE=		https://apps.gnome.org/Showtime/

# GPLv3
PERMIT_PACKAGE=		Yes

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

BUILD_DEPENDS=	 	devel/appstream \
			x11/blueprint-compiler \
			x11/gnome/libadwaita

RUN_DEPENDS=		devel/py-gobject3 \
			x11/gnome/libadwaita

# gtk4paintablesink
RUN_DEPENDS +=		multimedia/gstreamer1/plugins-rs

# add required introspection libs that are not in the dependency chain
RUN_DEPENDS +=		multimedia/gstreamer1/plugins-base \
			multimedia/gstreamer1/plugins-bad

# while the following are not "required" for showtime to run, there's no point
# in having a media player that can't play most modern media files
RUN_DEPENDS +=		multimedia/gstreamer1/plugins-good \
			multimedia/gstreamer1/libav

post-install:
	${MODPY_COMPILEALL} ${PREFIX}

.include <bsd.port.mk>
