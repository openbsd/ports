COMMENT=		GNOME music playing application

GNOME_PROJECT=		gnome-music
GNOME_VERSION=		48.0

HOMEPAGE=		https://apps.gnome.org/Music/

# GPLv2+
PERMIT_PACKAGE=		Yes

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils yelp gtk-update-icon-cache \
			gobject-introspection

MODGNOME_LDFLAGS=	-L${X11BASE}/lib

BUILD_DEPENDS=		devel/py-gobject3 \
			devel/libsoup3 \
			graphics/py-cairo \
			x11/gnome/grilo-plugins \
			x11/gnome/libadwaita \
			x11/gnome/libmediaart \
			x11/gnome/tinysparql

RUN_DEPENDS=		devel/py-gobject3 \
			devel/libsoup3 \
			graphics/py-cairo \
			x11/gnome/grilo-plugins \
			x11/gnome/libadwaita \
			x11/gnome/libmediaart \
			x11/gnome/tinysparql

# org.freedesktop.Tracker3.Miner.Files
RUN_DEPENDS +=		x11/gnome/localsearch

# sndio(7) support
RUN_DEPENDS +=		multimedia/gstreamer1/plugins-base

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
