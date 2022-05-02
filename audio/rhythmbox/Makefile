COMMENT=		integrated music management application for GNOME

GNOME_PROJECT=		rhythmbox
GNOME_VERSION=		3.4.5

SHARED_LIBS +=  rhythmbox-core       0.0      # 7.0

CATEGORIES=		audio

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 with exception clause
PERMIT_PACKAGE=	Yes

WANTLIB += X11 atk-1.0 c cairo dmapsharing-3.0 gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 glib-2.0 gobject-2.0 grilo-0.3
WANTLIB += gstaudio-1.0 gstbase-1.0 gstcontroller-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gtk-3 intl json-glib-1.0 m
WANTLIB += notify pango-1.0 pangocairo-1.0 peas-1.0 peas-gtk-1.0
WANTLIB += secret-1 soup-2.4 tdb totem-plparser xml2

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}
RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}

# needed for the tests
BUILD_DEPENDS +=	devel/check

LIB_DEPENDS=		databases/tdb \
			devel/json-glib \
			devel/libnotify \
			devel/libpeas \
			multimedia/gstreamer1/plugins-base \
			x11/gnome/grilo \
			x11/gnome/libdmapsharing \
			x11/gnome/totem-pl-parser

# context plugin
RUN_DEPENDS +=		www/py-mako${MODPY_FLAVOR}

# calls grl_registry_load...plugin
RUN_DEPENDS +=		x11/gnome/grilo-plugins>=0.3.0

# needed for flac support
RUN_DEPENDS +=		multimedia/gstreamer1/plugins-good

# needed for mp3 support
RUN_DEPENDS +=		multimedia/gstreamer1/plugins-libav

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache vala yelp

CONFIGURE_ARGS=		-Dbrasero=disabled \
			-Dfm_radio=disabled \
			-Dgudev=disabled \
			-Dipod=disabled \
			-Dlirc=disabled

# XXX requires udev|gvfs-mtp
CONFIGURE_ARGS +=	-Dmtp=disabled

# WRKBUILD/tests
TEST_IS_INTERACTIVE=	x11

post-install:
	# XXX hangs: check at next rhythmbox update
	rm -rf ${PREFIX}/{lib,share}/rhythmbox/plugins/replaygain

.include <bsd.port.mk>
