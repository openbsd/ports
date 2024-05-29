COMMENT=		official media player for GNOME

GNOME_PROJECT=		totem
GNOME_VERSION=		43.0
REVISION=		6

SHARED_LIBS += totem                     0.0 # 0.0.0

CATEGORIES=		multimedia

# GPLv2 with exception clause - LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0 gnome-desktop-3
WANTLIB += gobject-2.0 grilo-0.3 grlpls-0.3 gstaudio-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gtk-3 handy-1
WANTLIB += intl m pango-1.0 pangocairo-1.0 peas-1.0 peas-gtk-1.0
WANTLIB += portal portal-gtk3 totem-plparser

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

BUILD_DEPENDS=	 	devel/gsettings-desktop-schemas \
			devel/py-gobject3${MODPY_FLAVOR} \
			multimedia/gstreamer1/plugins-good

# needed for make check
BUILD_DEPENDS +=	devel/pylint${MODPY_FLAVOR}

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/py-gobject3${MODPY_FLAVOR} \
			x11/dbus-python${MODPY_FLAVOR}

# calls grl_registry_load...plugin
RUN_DEPENDS +=		x11/gnome/grilo-plugins

LIB_DEPENDS=		devel/gobject-introspection \
			devel/libpeas \
			sysutils/flatpak/libportal,-gtk3 \
			x11/gnome/desktop \
			x11/gnome/grilo \
			x11/gnome/totem-pl-parser \
			x11/libhandy

# while the following are not "required" for totem to run, there's no
# point in using a media player that can't play most modern media files
RUN_DEPENDS +=		multimedia/gstreamer1/plugins-good \
			multimedia/gstreamer1/plugins-libav

MODGNOME_TOOLS += desktop-file-utils gobject-introspection gtk-update-icon-cache
MODGNOME_TOOLS += yelp

CONFIGURE_ARGS=		-Denable-easy-codec-installation=no

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-install:
	${MODPY_COMPILEALL} ${PREFIX}

.include <bsd.port.mk>
