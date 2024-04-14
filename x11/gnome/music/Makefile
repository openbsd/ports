# XXX check if gobject-introspection is needed at next update
# (checked by meson but doesn't seem to be used)

COMMENT=		GNOME music playing application

GNOME_PROJECT=		gnome-music
GNOME_VERSION=		46.0

# GPLv2+
PERMIT_PACKAGE=		Yes

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

MODGNOME_TOOLS +=	desktop-file-utils gobject-introspection yelp
MODGNOME_TOOLS +=	gtk-update-icon-cache

MODGNOME_LDFLAGS=	-L${X11BASE}/lib

BUILD_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR} \
			devel/libsoup3 \
			x11/gnome/grilo-plugins \
			x11/gnome/libadwaita \
			x11/gnome/libdazzle \
			x11/gnome/libmediaart \
			x11/gnome/online-accounts \
			x11/gnome/tracker3

RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR} \
			devel/libsoup3 \
			x11/gnome/grilo-plugins \
			x11/gnome/libadwaita \
			x11/gnome/libdazzle \
			x11/gnome/libmediaart \
			x11/gnome/online-accounts \
			x11/gnome/tracker3

# org.freedesktop.Tracker3.Miner.Files
RUN_DEPENDS +=		x11/gnome/tracker3-miners

# sndio(7) support
RUN_DEPENDS +=		multimedia/gstreamer1/plugins-base

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
