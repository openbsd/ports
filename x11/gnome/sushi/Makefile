BROKEN=			https://gitlab.gnome.org/GNOME/sushi/-/merge_requests/43

COMMENT=		quick previewer for Nautilus

GNOME_PROJECT=		sushi
GNOME_VERSION=		46.0
REVISION=		2

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += # XXX TODO when ported from evince to papers

MODULES=		devel/meson \
			x11/gnome

LIB_DEPENDS=		multimedia/gstreamer1/plugins-base \
			x11/gnome/papers

BUILD_DEPENDS=		x11/gnome/gjs \
			x11/gtksourceview4

RUN_DEPENDS=		x11/gnome/gjs \
			x11/gtksourceview4

# src/ui/main.js
RUN_DEPENDS +=		devel/libsoup3

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
